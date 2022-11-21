local currentJob = nil

RegisterNetEvent("esx_inventoryhud:openJobStashInventory")
AddEventHandler("esx_inventoryhud:openJobStashInventory", function(data)
    setJobStashInventory(data)
    openJobStashInventory()
end)

function refreshJobStashInventory()
    if currentJob == "police" then
		ESX.TriggerServerCallback("esx_policejob:getPropertyInventory", function(inventory)
			setJobStashInventory(inventory)
		end)
    elseif currentJob == "ambulance" then
		ESX.TriggerServerCallback("esx_ambulancejob:getPropertyInventory", function(inventory)
			setJobStashInventory(inventory)
		end)
    elseif currentJob == "mechanic" then
        ESX.TriggerServerCallback('esx_mechanicjob:getStockItems', function(items)
            local data = {
                inventory = items,
                job = 'mechanic',
                gang_name = nil
            }
            setJobStashInventory(data)
        end)
	elseif currentJob == "prison" then
		ESX.TriggerServerCallback("esx_qalle_jail:getPropertyInventory", function(inventory)
			setJobStashInventory(inventory)
		end)
    end
end

function setJobStashInventory(data)
    currentJob = data.job
	if currentJob == 'police' then
		stashName = 'Police Stash'
	elseif currentJob == 'ambulance' then
		stashName = 'Ambulance Stash'
	elseif currentJob == 'mechanic' then
		stashName = 'Mechanic Stash'
	elseif currentJob == 'prison' then
		stashName = 'Prison Stash'
	end
    SendNUIMessage({
        action = "setInfoText",
        text = stashName
    })

    items = {}

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

    SendNUIMessage({
        action = "setSecondInventoryItems",
        itemList = items
    })
end

function openJobStashInventory()
    loadPlayerInventory()
    isInInventory = true

    SendNUIMessage({
        action = "display",
        type = "jobstash"
    })

    SetNuiFocus(true, true)
end

RegisterNUICallback("PutIntoJobStash", function(data, cb)
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
        if currentJob == "police" then
			TriggerServerEvent("esx_policejob:putItem", data.item.type, data.item.name, count)
        elseif currentJob == "ambulance" then
			TriggerServerEvent("esx_ambulancejob:putItem", data.item.type, data.item.name, count)
        elseif currentJob == "mechanic" then
            TriggerServerEvent('esx_mechanicjob:putStockItems', data.item.name, count)   
		elseif currentJob == "prison" then
			TriggerServerEvent("esx_qalle_jail:putItem", data.item.type, data.item.name, count)
        end         
    end

    Wait(350)
    refreshJobStashInventory()
    Wait(350)
    loadPlayerInventory()

    cb("ok")
end)

RegisterNUICallback("TakeFromJobStash", function(data, cb)
    if IsPedSittingInAnyVehicle(playerPed) then
        return
    end

    if type(data.number) == "number" and math.floor(data.number) == data.number then
        local count = tonumber(data.number)

        if count <= 0 then
            return
        end

        if currentJob == "police" then
			TriggerServerEvent("esx_policejob:getItem", data.item.type, data.item.name, tonumber(data.number))
        elseif currentJob == "ambulance" then
			TriggerServerEvent("esx_ambulancejob:getItem", data.item.type, data.item.name, tonumber(data.number))
        elseif currentJob == "mechanic" then
            TriggerServerEvent('esx_mechanicjob:getStockItem', data.item.name, count)
		elseif currentJob == "prison" then
			TriggerServerEvent("esx_qalle_jail:getItem", data.item.type, data.item.name, tonumber(data.number))
        end
    end

    Wait(350)
    refreshJobStashInventory()
    Wait(350)
    loadPlayerInventory()

    cb("ok")
end)

-- Destroy Confiscated Items

RegisterNetEvent("esx_policejob:DestroyPoliceConfItems")
AddEventHandler("esx_policejob:DestroyPoliceConfItems", function()
    SendNUIMessage({
        action = "setInfoText",
        text = "Destroy Confiscated Items"
    })

    SendNUIMessage({
        action = "setSecondInventoryItems",
        itemList = {}
    })    

    SendNUIMessage({
        action = "display",
        type = "destroy"
    })

    SetNuiFocus(true, true)

    loadPlayerInventory()
    isInInventory = true    
end)

RegisterNUICallback("PutIntoDestroyItems", function(data, cb)
    if IsPedSittingInAnyVehicle(playerPed) then
        return
    end

    if data.item.name == 'black_money' or data.item.name == 'cash' then
        return
    end

    if type(data.number) == "number" and math.floor(data.number) == data.number then
        local count = tonumber(data.number)

		if data.item.type == "item_weapon" then
			count = 0
			TriggerServerEvent("esx_inventoryhud:unloadClip", "WEAPON_UNARMED", GetHashKey(data.item.name), GetAmmoInPedWeapon(PlayerPedId(), GetHashKey(data.item.name)))
		end

        TriggerServerEvent("esx_policejob:DestroyItem", data.item.type, data.item.name, count)         
    end

    Wait(350)
    loadPlayerInventory()

    cb("ok")
end)































