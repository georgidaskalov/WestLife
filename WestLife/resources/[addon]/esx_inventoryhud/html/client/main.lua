local Keys = {
    ["ESC"] = 322,
    ["F1"] = 288,
    ["F2"] = 289,
    ["F3"] = 170,
    ["F5"] = 166,
    ["F6"] = 167,
    ["F7"] = 168,
    ["F8"] = 169,
    ["F9"] = 56,
    ["F10"] = 57,
    ["~"] = 243,
    ["1"] = 157,
    ["2"] = 158,
    ["3"] = 160,
    ["4"] = 164,
    ["5"] = 165,
    ["6"] = 159,
    ["7"] = 161,
    ["8"] = 162,
    ["9"] = 163,
    ["-"] = 84,
    ["="] = 83,
    ["BACKSPACE"] = 177,
    ["TAB"] = 37,
    ["Q"] = 44,
    ["W"] = 32,
    ["E"] = 38,
    ["R"] = 45,
    ["T"] = 245,
    ["Y"] = 246,
    ["U"] = 303,
    ["P"] = 199,
    ["["] = 39,
    ["]"] = 40,
    ["ENTER"] = 18,
    ["CAPS"] = 137,
    ["A"] = 34,
    ["S"] = 8,
    ["D"] = 9,
    ["F"] = 23,
    ["G"] = 47,
    ["H"] = 74,
    ["K"] = 311,
    ["L"] = 182,
    ["LEFTSHIFT"] = 21,
    ["Z"] = 20,
    ["X"] = 73,
    ["C"] = 26,
    ["V"] = 0,
    ["B"] = 29,
    ["N"] = 249,
    ["M"] = 244,
    [","] = 82,
    ["."] = 81,
    ["LEFTCTRL"] = 36,
    ["LEFTALT"] = 19,
    ["SPACE"] = 22,
    ["RIGHTCTRL"] = 70,
    ["HOME"] = 213,
    ["PAGEUP"] = 10,
    ["PAGEDOWN"] = 11,
    ["DELETE"] = 178,
    ["LEFT"] = 174,
    ["RIGHT"] = 175,
    ["TOP"] = 27,
    ["DOWN"] = 173,
    ["NENTER"] = 201,
    ["N4"] = 108,
    ["N5"] = 60,
    ["N6"] = 107,
    ["N+"] = 96,
    ["N-"] = 97,
    ["N7"] = 117,
    ["N8"] = 61,
    ["N9"] = 118
}

isInInventory = false
ESX = nil
local isInSafeZone = false

local fastWeapons = {
	[1] = nil,
	[2] = nil,
	[3] = nil,
	[4] = nil,
	[5] = nil
}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsControlJustReleased(0, Config.OpenControl) and IsInputDisabled(0) then
			openInventory()
		end
	end
end)

RegisterCommand('closeinv', function(source, args, raw)
	if isInInventory then
		closeInventory()
	end
end)

AddEventHandler('esx:onPlayerDeath', function(data)
	SetCurrentPedWeapon(GetPlayerPed(-1), "WEAPON_UNARMED",true)
	Citizen.Wait(1000)
	fastWeapons[1] = nil
	fastWeapons[2] = nil
	fastWeapons[3] = nil
	fastWeapons[4] = nil
	fastWeapons[5] = nil
end)

--===================
-- PYRP Hotkeys
--===================

local lastUsed = 0
local bindCooldown = 800

Citizen.CreateThread(function() -- Disable Tab/Weapon Wheel
	Citizen.Wait(2000)
	while true do
		Citizen.Wait(0)
		HideHudComponentThisFrame(19)
		HideHudComponentThisFrame(20)
		BlockWeaponWheelThisFrame()
		DisableControlAction(0, 37,true)
	end
end)

RegisterNUICallback("PutIntoFast", function(data, cb)
	if string.find(data.item.name, "ammo_") then
		exports['mythic_notify']:DoLongHudText('error', 'You can\'t bind ammo')
		return
	end
	if not data.item.usable and not string.find(data.item.name, "WEAPON_") then
		exports['mythic_notify']:DoLongHudText('error', 'You can only bind usable items/weapons')
		return
	end
	if data.item.slot ~= nil then
		fastWeapons[data.item.slot] = nil
	end
	fastWeapons[data.slot] = data.item.name
	loadPlayerInventory()
	cb("ok")
end)

RegisterNUICallback("TakeFromFast", function(data, cb)
	while fastWeapons[data.item.slot] == nil do
		-- May error e bulok.
		Citizen.Wait(0)
	end
	if string.find(fastWeapons[data.item.slot], "WEAPON_") and GetSelectedPedWeapon(PlayerPedId()) == GetHashKey(fastWeapons[data.item.slot]) then
		if IsPedArmed(PlayerPedId(), 7) then
            SetCurrentPedWeapon(GetPlayerPed(-1), "WEAPON_UNARMED",true)
        end
	end
	fastWeapons[data.item.slot] = nil
	loadPlayerInventory()
	cb("ok")
end)

RegisterNetEvent("pyrp_base:isInSafeZone")
AddEventHandler("pyrp_base:isInSafeZone", function(IsSafeZone)
	isInSafeZone = IsSafeZone
end)

RegisterNetEvent("esx_inventoryhud:setUnarmed")
AddEventHandler("esx_inventoryhud:setUnarmed", function()
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey('WEAPON_UNARMED'), 1, false, true)
end)

RegisterNetEvent("esx_inventoryhud:removeClientWeapon")
AddEventHandler("esx_inventoryhud:removeClientWeapon", function(weaponName)
	RemoveWeaponFromPed(PlayerPedId(), GetHashKey(weaponName))
end)

--[[
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
			   
		if IsDisabledControlJustReleased(0, 157) and fastWeapons[1] ~= nil and ( GetGameTimer() - lastUsed > bindCooldown ) then
			TriggerEvent("esx_inventoryhud:useItem", fastWeapons[1])
		elseif IsDisabledControlJustReleased(0, 157) and fastWeapons[1] ~= nil and ( GetGameTimer() - lastUsed < bindCooldown ) then
			exports['mythic_notify']:DoLongHudText('error', 'Please wait before using the binds again.')
		end
				
		if IsDisabledControlJustReleased(0, 158) and fastWeapons[2] ~= nil and ( GetGameTimer() - lastUsed > bindCooldown ) then
			TriggerEvent("esx_inventoryhud:useItem", fastWeapons[2])
		elseif IsDisabledControlJustReleased(0, 158) and fastWeapons[2] ~= nil and ( GetGameTimer() - lastUsed < bindCooldown ) then
			exports['mythic_notify']:DoLongHudText('error', 'Please wait before using the binds again.')
		end
				
		if IsDisabledControlJustReleased(0, 160) and fastWeapons[3] ~= nil and ( GetGameTimer() - lastUsed > bindCooldown ) then
			TriggerEvent("esx_inventoryhud:useItem", fastWeapons[3])
		elseif IsDisabledControlJustReleased(0, 160) and fastWeapons[3] ~= nil and ( GetGameTimer() - lastUsed < bindCooldown ) then
			exports['mythic_notify']:DoLongHudText('error', 'Please wait before using the binds again.')
		end
				
		if IsDisabledControlJustReleased(0, 164) and fastWeapons[4] ~= nil and ( GetGameTimer() - lastUsed > bindCooldown ) then
			TriggerEvent("esx_inventoryhud:useItem", fastWeapons[4])
		elseif IsDisabledControlJustReleased(0, 164) and fastWeapons[4] ~= nil and ( GetGameTimer() - lastUsed < bindCooldown ) then
			exports['mythic_notify']:DoLongHudText('error', 'Please wait before using the binds again.')
		end
				
		if IsDisabledControlJustReleased(0, 165) and fastWeapons[5] ~= nil and ( GetGameTimer() - lastUsed > bindCooldown ) then
			TriggerEvent("esx_inventoryhud:useItem", fastWeapons[5])
		elseif IsDisabledControlJustReleased(0, 165) and fastWeapons[5] ~= nil and ( GetGameTimer() - lastUsed < bindCooldown ) then
			exports['mythic_notify']:DoLongHudText('error', 'Please wait before using the binds again.')
		end
	end
end)
]]

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
			   
		if IsDisabledControlJustReleased(0, 157) and fastWeapons[1] ~= nil and ( GetGameTimer() - lastUsed > bindCooldown ) and not isInSafeZone then
			TriggerEvent("esx_inventoryhud:useItem", fastWeapons[1])
		elseif IsDisabledControlJustReleased(0, 157) and fastWeapons[1] ~= nil and ( GetGameTimer() - lastUsed < bindCooldown ) then
			exports['mythic_notify']:DoLongHudText('error', 'Please wait before using the binds again.')
		elseif IsDisabledControlJustReleased(0, 157) and fastWeapons[1] ~= nil and isInSafeZone then
			exports['mythic_notify']:DoLongHudText('error', 'You are in a safezone, binds are disabled.')
		end
				
		if IsDisabledControlJustReleased(0, 158) and fastWeapons[2] ~= nil and ( GetGameTimer() - lastUsed > bindCooldown ) and not isInSafeZone then
			TriggerEvent("esx_inventoryhud:useItem", fastWeapons[2])
		elseif IsDisabledControlJustReleased(0, 158) and fastWeapons[2] ~= nil and ( GetGameTimer() - lastUsed < bindCooldown ) then
			exports['mythic_notify']:DoLongHudText('error', 'Please wait before using the binds again.')
		elseif IsDisabledControlJustReleased(0, 158) and fastWeapons[1] ~= nil and isInSafeZone then
			exports['mythic_notify']:DoLongHudText('error', 'You are in a safezone, binds are disabled.')
		end
				
		if IsDisabledControlJustReleased(0, 160) and fastWeapons[3] ~= nil and ( GetGameTimer() - lastUsed > bindCooldown ) and not isInSafeZone then
			TriggerEvent("esx_inventoryhud:useItem", fastWeapons[3])
		elseif IsDisabledControlJustReleased(0, 160) and fastWeapons[3] ~= nil and ( GetGameTimer() - lastUsed < bindCooldown ) then
			exports['mythic_notify']:DoLongHudText('error', 'Please wait before using the binds again.')
		elseif IsDisabledControlJustReleased(0, 160) and fastWeapons[1] ~= nil and isInSafeZone then
			exports['mythic_notify']:DoLongHudText('error', 'You are in a safezone, binds are disabled.')
		end
				
		if IsDisabledControlJustReleased(0, 164) and fastWeapons[4] ~= nil and ( GetGameTimer() - lastUsed > bindCooldown ) and not isInSafeZone then
			TriggerEvent("esx_inventoryhud:useItem", fastWeapons[4])
		elseif IsDisabledControlJustReleased(0, 164) and fastWeapons[4] ~= nil and ( GetGameTimer() - lastUsed < bindCooldown ) then
			exports['mythic_notify']:DoLongHudText('error', 'Please wait before using the binds again.')
		elseif IsDisabledControlJustReleased(0, 164) and fastWeapons[1] ~= nil and isInSafeZone then
			exports['mythic_notify']:DoLongHudText('error', 'You are in a safezone, binds are disabled.')
		end
				
		if IsDisabledControlJustReleased(0, 165) and fastWeapons[5] ~= nil and ( GetGameTimer() - lastUsed > bindCooldown ) and not isInSafeZone then
			TriggerEvent("esx_inventoryhud:useItem", fastWeapons[5])
		elseif IsDisabledControlJustReleased(0, 165) and fastWeapons[5] ~= nil and ( GetGameTimer() - lastUsed < bindCooldown ) then
			exports['mythic_notify']:DoLongHudText('error', 'Please wait before using the binds again.')
		elseif IsDisabledControlJustReleased(0, 165) and fastWeapons[1] ~= nil and isInSafeZone then
			exports['mythic_notify']:DoLongHudText('error', 'You are in a safezone, binds are disabled.')
		end
	end
end)

RegisterNetEvent("esx_inventoryhud:useItem")
AddEventHandler("esx_inventoryhud:useItem", function(itemName)
	lastUsed = GetGameTimer()
    if string.find(itemName, "WEAPON_") then
        if IsPedArmed(PlayerPedId(), 7) then
            SetCurrentPedWeapon(GetPlayerPed(-1), "WEAPON_UNARMED",true)
			TriggerEvent('esx_inventoryhud:notification', itemName, 'HOLSTERED', 1, 'USED')
        else
			SetCurrentPedWeapon(GetPlayerPed(-1), itemName,true)
			
			TriggerEvent('esx_inventoryhud:notification', itemName, 'UNHOLSTERED', 1, 'USED')
        end
         
    else
		TriggerServerEvent("esx:useItem", itemName)   
		TriggerEvent('esx_inventoryhud:notification', itemName, 'USED', 1, 'REMOVED')
    end
end)

RegisterNetEvent('esx_inventoryhud:notification')
AddEventHandler('esx_inventoryhud:notification', function(sourceitemname, sourceitemlabel, sourceitemcount, sourceitemmessage)
    local data = {}
	table.insert(data, {
		item = {
			label = sourceitemlabel,
			itemId = sourceitemname
		},
		qty = sourceitemcount,
		message = sourceitemmessage
	})
    SendNUIMessage({
        action = 'itemUsed',
        alerts = data
    })
end)





function openInventory()
    loadPlayerInventory()
    isInInventory = true
    SendNUIMessage(
        {
            action = "display",
            type = "normal"
        }
    )
    SetNuiFocus(true, true)
end

function closeInventory()
    isInInventory = false
    SendNUIMessage(
        {
            action = "hide"
        }
    )
    SetNuiFocus(false, false)
end

RegisterNUICallback(
    "NUIFocusOff",
    function()
        closeInventory()
    end
)

RegisterNUICallback(
    "GetNearPlayers",
    function(data, cb)
        local playerPed = PlayerPedId()
        local players, nearbyPlayer = ESX.Game.GetPlayersInArea(GetEntityCoords(playerPed), 3.0)
        local foundPlayers = false
        local elements = {}

        for i = 1, #players, 1 do
            if players[i] ~= PlayerId() then
                foundPlayers = true

                table.insert(
                    elements,
                    {
                        label = GetPlayerName(players[i]),
                        player = GetPlayerServerId(players[i])
                    }
                )
            end
        end

        if not foundPlayers then
            exports['mythic_notify']:DoLongHudText('error', 'There are no players nearby.')
        else
            SendNUIMessage(
                {
                    action = "nearPlayers",
                    foundAny = foundPlayers,
                    players = elements,
                    item = data.item
                }
            )
        end

        cb("ok")
    end
)

RegisterNUICallback(
    "UseItem",
    function(data, cb)
        TriggerServerEvent("esx:useItem", data.item.name)
		closeInventory()
        
		--[[if shouldCloseInventory(data.item.name) then
            closeInventory()
        else
            Citizen.Wait(250)
            loadPlayerInventory()
        end]]

        cb("ok")
    end
)

RegisterNUICallback(
    "DropItem",
    function(data, cb)
        if IsPedSittingInAnyVehicle(playerPed) then
            return
        end

        if type(data.number) == "number" and math.floor(data.number) == data.number then
            TriggerServerEvent("esx:removeInventoryItem", data.item.type, data.item.name, data.number)
        end

        Wait(250)
        loadPlayerInventory()

        cb("ok")
    end
)

RegisterNUICallback(
    "GiveItem",
    function(data, cb)
        local playerPed = PlayerPedId()
        local players, nearbyPlayer = ESX.Game.GetPlayersInArea(GetEntityCoords(playerPed), 3.0)
        local foundPlayer = false
        for i = 1, #players, 1 do
            if players[i] ~= PlayerId() then
                if GetPlayerServerId(players[i]) == data.player then
                    foundPlayer = true
                end
            end
        end

        if foundPlayer then
            local count = tonumber(data.number)

            if data.item.type == "item_weapon" then
                count = GetAmmoInPedWeapon(PlayerPedId(), GetHashKey(data.item.name))
            end

            TriggerServerEvent("esx:giveInventoryItem", data.player, data.item.type, data.item.name, count)
			TriggerServerEvent('pyrp_discord:sendToWebhook', 'giveitem', 'Give Item', 'Username: '..GetPlayerName(PlayerId())..'\nTarget: '..GetPlayerName(data.player)..'\nItem: '..data.item.name..'\nAmount: '..count..'')
            Wait(250)
            loadPlayerInventory()
        else
            exports['mythic_notify']:DoLongHudText('error', 'There are no players nearby.')
        end
        cb("ok")
    end
)

function shouldCloseInventory(itemName)
    for index, value in ipairs(Config.CloseUiItems) do
        if value == itemName then
            return true
        end
    end

    return false
end

function shouldSkipAccount(accountName)
    for index, value in ipairs(Config.ExcludeAccountsList) do
        if value == accountName then
            return true
        end
    end

    return false
end

function loadPlayerInventory()
    ESX.TriggerServerCallback(
        "esx_inventoryhud:getPlayerInventory",
        function(data)
			fastItems = {}
            items = {}
            inventory = data.inventory
            accounts = data.accounts
            money = data.money
            weapons = data.weapons

            if Config.IncludeCash and money ~= nil and money > 0 then
                moneyData = {
                    label = _U("cash"),
                    name = "cash",
                    type = "item_money",
                    count = money,
                    usable = false,
                    rare = false,
                    weight = -1,
                    canRemove = true
                }

                table.insert(items, moneyData)
            end

            if Config.IncludeAccounts and accounts ~= nil then
                for key, value in pairs(accounts) do
                    if not shouldSkipAccount(accounts[key].name) then
                        local canDrop = accounts[key].name ~= "bank"

                        if accounts[key].money > 0 then
                            accountData = {
                                label = accounts[key].label,
                                count = accounts[key].money,
                                type = "item_account",
                                name = accounts[key].name,
                                usable = false,
                                rare = false,
                                weight = -1,
                                canRemove = canDrop
                            }
                            table.insert(items, accountData)
                        end
                    end
                end
            end

            if Config.IncludeWeapons and weapons ~= nil then
                for key, value in pairs(weapons) do
                    local weaponHash = GetHashKey(weapons[key].name)
                    local playerPed = PlayerPedId()
                    if weapons[key].name ~= "WEAPON_UNARMED" then

                        local found = false
                        for slot, weapon in pairs(fastWeapons) do
                            if weapon == weapons[key].name then
                                local ammo = GetAmmoInPedWeapon(playerPed, weaponHash)
                                table.insert(
                                    fastItems,
                                    {
                                        label = weapons[key].label,
                                        count = ammo,
                                        --count = 1,
                                        limit = -1,
                                       -- limit = 1,
                                        type = "item_weapon",
                                        name = weapons[key].name,
                                        usable = false,
                                        rare = false,
                                        canRemove = true,
                                        slot = slot
                                    }
                                )
                                found = true
                                break
                            end
                        end

                        if found == false then
                            local ammo = GetAmmoInPedWeapon(playerPed, weaponHash)
                            table.insert(
                                items,
                                {
                                    label = weapons[key].label,
									--count = 1,
                                    count = ammo,
                                    limit = -1,
                                   -- limit = 1,
                                    type = "item_weapon",
                                    name = weapons[key].name,
                                    usable = false,
                                    rare = false,
                                    canRemove = true
                                }
                            )
                        end
                    end
                end
            end
			
			if inventory ~= nil then
                for key, value in pairs(inventory) do
                    if inventory[key].count <= 0 then
                        inventory[key] = nil
                    else
                        inventory[key].type = "item_standard"
                        local founditem = false
                        for slot, item in pairs(fastWeapons) do
							if item == inventory[key].name then
                                table.insert(
                                        fastItems,
                                        {
                                            label = inventory[key].label,
                                            count = inventory[key].count,
                                            limit = inventory[key].limit,
                                            type = "item_standard",
                                            name = inventory[key].name,
                                            usable = inventory[key].usable,
                                            rare = inventory[key].rare,
                                            canRemove = true,
                                            slot = slot
                                        }
                                )
                                founditem = true
                                break
                            end
						end
						if string.find(inventory[key].name, "ammo_") then
                            inventory[key].usable = true
                        end
						if founditem == false then
							table.insert(items, inventory[key])
                        end
                    end
                end
				
            end

            SendNUIMessage(
                {
                    action = "setItems",
                    itemList = items,
                    fastItems = fastItems
                }
            )
        end,
        GetPlayerServerId(PlayerId())
    )
end

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(1)
            if isInInventory then
                local playerPed = PlayerPedId()
                DisableControlAction(0, 1, true) -- Disable pan
                DisableControlAction(0, 2, true) -- Disable tilt
                DisableControlAction(0, 24, true) -- Attack
                DisableControlAction(0, 257, true) -- Attack 2
                DisableControlAction(0, 25, true) -- Aim
                DisableControlAction(0, 263, true) -- Melee Attack 1
                DisableControlAction(0, Keys["W"], true) -- W
                DisableControlAction(0, Keys["A"], true) -- A
                DisableControlAction(0, 31, true) -- S (fault in Keys table!)
                DisableControlAction(0, 30, true) -- D (fault in Keys table!)

                DisableControlAction(0, Keys["R"], true) -- Reload
                DisableControlAction(0, Keys["SPACE"], true) -- Jump
                DisableControlAction(0, Keys["Q"], true) -- Cover
                DisableControlAction(0, Keys["TAB"], true) -- Select Weapon
                DisableControlAction(0, Keys["F"], true) -- Also 'enter'?

                DisableControlAction(0, Keys["F1"], true) -- Disable phone
                DisableControlAction(0, Keys["F2"], true) -- Inventory
                DisableControlAction(0, Keys["F3"], true) -- Animations
                DisableControlAction(0, Keys["F6"], true) -- Job

                DisableControlAction(0, Keys["V"], true) -- Disable changing view
                DisableControlAction(0, Keys["C"], true) -- Disable looking behind
                DisableControlAction(0, Keys["X"], true) -- Disable clearing animation
                DisableControlAction(2, Keys["P"], true) -- Disable pause screen

                DisableControlAction(0, 59, true) -- Disable steering in vehicle
                DisableControlAction(0, 71, true) -- Disable driving forward in vehicle
                DisableControlAction(0, 72, true) -- Disable reversing in vehicle

                DisableControlAction(2, Keys["LEFTCTRL"], true) -- Disable going stealth

                DisableControlAction(0, 47, true) -- Disable weapon
                DisableControlAction(0, 264, true) -- Disable melee
                DisableControlAction(0, 257, true) -- Disable melee
                DisableControlAction(0, 140, true) -- Disable melee
                DisableControlAction(0, 141, true) -- Disable melee
                DisableControlAction(0, 142, true) -- Disable melee
                DisableControlAction(0, 143, true) -- Disable melee
                DisableControlAction(0, 75, true) -- Disable exit vehicle
                DisableControlAction(27, 75, true) -- Disable exit vehicle
            end
        end
    end
)
