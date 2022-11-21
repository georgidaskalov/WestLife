RegisterNetEvent("esx_inventoryhud:openGangStash")
AddEventHandler("esx_inventoryhud:openGangStash", function(data)
	setPropertyGangData(data)
	openGangInventory()
end)

function refreshGangInventory()
    ESX.TriggerServerCallback("pyrp_gangs:getPropertyInventory", function(inventory)
		setPropertyGangData(inventory)
	end, currentStash, currentGangId)
end

function setPropertyGangData(data)
	currentStash = data.stash_name
	currentGangId = data.gang_id
	
    items = {}
	
    SendNUIMessage(
                {
                    action = "setInfoText",
                    text = data.stash_name
                }
            )

    local blackMoney = data.blackMoney
    local propertyItems = data.items
    local propertyWeapons = data.weapons

    if blackMoney > 0 then
        accountData = {
            label = _U("black_money"),
            count = blackMoney,
            type = "item_account",
            name = "black_money",
            usable = false,
            rare = false,
            limit = -1,
            canRemove = false
        }
        table.insert(items, accountData)
    end

    for i = 1, #propertyItems, 1 do
        local item = propertyItems[i]

        if item.count > 0 then
            item.type = "item_standard"
            item.usable = false
            item.rare = false
            item.limit = -1
            item.canRemove = false

            table.insert(items, item)
        end
    end

    for i = 1, #propertyWeapons, 1 do
        local weapon = propertyWeapons[i]

        if propertyWeapons[i].name ~= "WEAPON_UNARMED" then
            table.insert(
                items,
                {
                    label = ESX.GetWeaponLabel(weapon.name),
                    count = weapon.ammo,
                    limit = -1,
                    type = "item_weapon",
                    name = weapon.name,
                    usable = false,
                    rare = false,
                    canRemove = false
                }
            )
        end
    end

    SendNUIMessage(
        {
            action = "setSecondInventoryItems",
            itemList = items
        }
    )
end

function openGangInventory()
    loadPlayerInventory()
    isInInventory = true

    SendNUIMessage(
        {
            action = "display",
            type = "gang"
        }
    )

    SetNuiFocus(true, true)
end

RegisterNUICallback(
    "PutIntoGang",
    function(data, cb)
        if IsPedSittingInAnyVehicle(playerPed) then
            return
        end
		
		if data.item.name == "WEAPON_PETROLCAN" then
			print('wag yan delikado yan')
			return
		end
		
        if type(data.number) == "number" and math.floor(data.number) == data.number then
            local count = tonumber(data.number)
			
            if data.item.type == "item_weapon" then
				count = GetAmmoInPedWeapon(PlayerPedId(), GetHashKey(data.item.name))
            end

            TriggerServerEvent("pyrp_gangs:putItem", data.item.type, data.item.name, count, currentGangId)
			TriggerServerEvent("pyrp_discord:sendToWebhook", "gang", "Deposit Gang Stash", '**Name:** '..GetPlayerName(PlayerId())..' \n**Item Type:** '..data.item.type..'\n**Item Name:** '..data.item.name..'\n**Count:** '..count..'\n**Gang ID:** '..currentGangId..'')
			
        end

        Wait(150)
        refreshGangInventory()
        Wait(150)
        loadPlayerInventory()

        cb("ok")
    end
)

RegisterNUICallback(
    "TakeFromGang",
    function(data, cb)
        if IsPedSittingInAnyVehicle(playerPed) then
            return
        end

        if type(data.number) == "number" and math.floor(data.number) == data.number then
            TriggerServerEvent("pyrp_gangs:getItem", data.item.type, data.item.name, tonumber(data.number), currentGangId)
			TriggerServerEvent("pyrp_discord:sendToWebhook", "gang", "Withdraw Gang Stash", '**Name:** '..GetPlayerName(PlayerId())..' \n**Item Type:** '..data.item.type..'\n**Item Name:** '..data.item.name..'\n**Count:** '..tonumber(data.number)..'\n**Gang ID:** '..currentGangId..'')
        end

        Wait(150)
        refreshGangInventory()
        Wait(150)
        loadPlayerInventory()

        cb("ok")
    end
)
