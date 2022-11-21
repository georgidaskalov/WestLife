ESX                = nil
PlayersHarvesting  = {}
PlayersHarvesting2 = {}
PlayersHarvesting3 = {}
PlayersCrafting    = {}
PlayersCrafting2   = {}
PlayersCrafting3   = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
  TriggerEvent('esx_service:activateService', 'mecano', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'mecano', _U('mechanic_customer'), true, true)
TriggerEvent('esx_society:registerSociety', 'mecano', 'Mecano', 'society_mecano', 'society_mecano', 'society_mecano', {type = 'public'})

-------------- Récupération bouteille de gaz -------------
---- Sqlut je teste ------
local function Harvest(source)

  SetTimeout(4000, function()

    if PlayersHarvesting[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local GazBottleQuantity = xPlayer.getInventoryItem('rubber').count

      if GazBottleQuantity >= 5 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('rubber', 1)

        Harvest(source)
      end
    end
  end)
end

RegisterServerEvent('esx_mecanojob:startHarvest')
AddEventHandler('esx_mecanojob:startHarvest', function()
  local _source = source
  PlayersHarvesting[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_gas_can'))
  Harvest(source)
end)
-- POLO © License | Discord : https://discord.gg/czW6Jqj
RegisterServerEvent('esx_mecanojob:stopHarvest')
AddEventHandler('esx_mecanojob:stopHarvest', function()
  local _source = source
  PlayersHarvesting[_source] = false
end)

local function Harvest2(source)

  SetTimeout(4000, function()

    if PlayersHarvesting2[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local FixToolQuantity  = xPlayer.getInventoryItem('fixtool').count
      if FixToolQuantity >= 10 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('fixtool', 1)

        Harvest2(source)
      end
    end
  end)
end

RegisterServerEvent('esx_society:washMoney')
AddEventHandler('esx_society:washMoney', function(society, amount)

	local xPlayer = ESX.GetPlayerFromId(source)
	local account = xPlayer.getAccount('black_money')
	
		if amount and amount > 0 and account.money >= amount then
		local howlong	= 0
		local xtime 	= 0 -- 
		local minorsec	= ''
		if xtime == 1 then
		 minorsec = ' secondes'
		elseif xtime == 0 then
		minorsec = ' minutes'
		end
		
		xPlayer.removeAccountMoney('black_money', amount)
		TriggerClientEvent('esx:showNotification', xPlayer.source, ('Tu as ~g~$' .. ESX.Math.GroupDigits(amount) .. '~s~ en attente de ~y~blanchiment d\'argent~s~ (' .. howlong .. minorsec .. ').'))
		Citizen.Wait(1000 * xtime * howlong)
		xPlayer.addMoney(amount)
		TriggerClientEvent('esx:showNotification', xPlayer.source, ('~p~Bravo!!~s~ ~g~$' .. ESX.Math.GroupDigits(amount) .. '~s~ on été ~y~Blanchi~s~ et mis dans votre ~b~poche~s~'))

	else
		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_amount'))
	end

end)

-- POLO © License | Discord : https://discord.gg/czW6Jqj
RegisterServerEvent('esx_mecanojob:startHarvest2')
AddEventHandler('esx_mecanojob:startHarvest2', function()
  local _source = source
  PlayersHarvesting2[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_repair_tools'))
  Harvest2(_source)
end)

RegisterServerEvent('esx_mecanojob:stopHarvest2')
AddEventHandler('esx_mecanojob:stopHarvest2', function()
  local _source = source
  PlayersHarvesting2[_source] = false
end)

local function Harvest3(source)

  SetTimeout(4000, function()

    if PlayersHarvesting3[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local CaroToolQuantity  = xPlayer.getInventoryItem('carotool').count
            if CaroToolQuantity >= 10 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('carotool', 1)

        Harvest3(source)
      end
    end
  end)
end

RegisterServerEvent('esx_mecanojob:startHarvest3')
AddEventHandler('esx_mecanojob:startHarvest3', function()
  local _source = source
  PlayersHarvesting3[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_body_tools'))
  Harvest3(_source)
end)
-- POLO © License | Discord : https://discord.gg/czW6Jqj
RegisterServerEvent('esx_mecanojob:stopHarvest3')
AddEventHandler('esx_mecanojob:stopHarvest3', function()
  local _source = source
  PlayersHarvesting3[_source] = false
end)

local function Craft(source)

  SetTimeout(4000, function()

    if PlayersCrafting[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local GazBottleQuantity = xPlayer.getInventoryItem('rubber').count

      if GazBottleQuantity <= 0 then
        TriggerClientEvent('esx:showNotification', source, _U('not_enough_gas_can'))
      else
                xPlayer.removeInventoryItem('rubber', 1)
                xPlayer.addInventoryItem('tyrekit', 1)

        Craft(source)
      end
    end
  end)
end

RegisterServerEvent('esx_mecanojob:startCraft')
AddEventHandler('esx_mecanojob:startCraft', function()
  local _source = source
  PlayersCrafting[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('assembling_blowtorch'))
  Craft(_source)
end)

RegisterServerEvent('esx_mecanojob:stopCraft')
AddEventHandler('esx_mecanojob:stopCraft', function()
  local _source = source
  PlayersCrafting[_source] = false
end)

local function Craft2(source)

  SetTimeout(4000, function()

    if PlayersCrafting2[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local FixToolQuantity  = xPlayer.getInventoryItem('fixtool').count
      if FixToolQuantity <= 0 then
        TriggerClientEvent('esx:showNotification', source, _U('not_enough_repair_tools'))
      else
                xPlayer.removeInventoryItem('fixtool', 1)
                xPlayer.addInventoryItem('repairkit', 1)

        Craft2(source)
      end
    end
  end)
end
-- POLO © License | Discord : https://discord.gg/czW6Jqj
RegisterServerEvent('esx_mecanojob:startCraft2')
AddEventHandler('esx_mecanojob:startCraft2', function()
  local _source = source
  PlayersCrafting2[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('assembling_blowtorch'))
  Craft2(_source)
end)

RegisterServerEvent('esx_mecanojob:stopCraft2')
AddEventHandler('esx_mecanojob:stopCraft2', function()
  local _source = source
  PlayersCrafting2[_source] = false
end)

local function Craft3(source)

  SetTimeout(4000, function()

    if PlayersCrafting3[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local CaroToolQuantity  = xPlayer.getInventoryItem('carotool').count
            if CaroToolQuantity <= 0 then
        TriggerClientEvent('esx:showNotification', source, _U('not_enough_body_tools'))
      else
                xPlayer.removeInventoryItem('carotool', 1)
                xPlayer.addInventoryItem('fixkit', 1)

        Craft3(source)
      end
    end
  end)
end

RegisterServerEvent('esx_mecanojob:startCraft3')
AddEventHandler('esx_mecanojob:startCraft3', function()
  local _source = source
  PlayersCrafting3[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('assembling_body_kit'))
  Craft3(_source)
end)

RegisterServerEvent('esx_mecanojob:stopCraft3')
AddEventHandler('esx_mecanojob:stopCraft3', function()
  local _source = source
  PlayersCrafting3[_source] = false
end)

-- POLO © License | Discord : https://discord.gg/czW6Jqj

RegisterServerEvent('esx_mecanojob:onNPCJobMissionCompleted')
AddEventHandler('esx_mecanojob:onNPCJobMissionCompleted', function()

  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
  local total   = math.random(Config.NPCJobEarnings.min, Config.NPCJobEarnings.max);
  local playerMoney  = ESX.Math.Round(total / 100 * 50)
  local societyMoney = ESX.Math.Round(total / 100 * 50)

  TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mechanic', function(account)
    account.addMoney(societyMoney)
  end)
      xPlayer.addMoney(playerMoney)

  

    --TriggerClientEvent("esx:showNotification", _source, 'Вие спечелихте:~g~$ ' .. total .. '')
    --TriggerClientEvent("esx:showNotification", _source, 'Компанията спечели:~g~$ ' .. total .. '')
  TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = 'Вие спечелихте:$ ' .. societyMoney .. '', length = 2500})
  TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = 'Компанията спечели:$ ' .. societyMoney .. '', length = 2500})
  --TriggerClientEvent("esx:showNotification", _source, _U('your_comp_earned').. total)
end)


---------------------------- register usable item --------------------------------------------------
ESX.RegisterUsableItem('blowpipe', function(source)

  local _source = source
  local xPlayer  = ESX.GetPlayerFromId(source)

  xPlayer.removeInventoryItem('blowpipe', 1)

  TriggerClientEvent('esx_mecanojob:onHijack', _source)
    TriggerClientEvent('esx:showNotification', _source, _U('you_used_blowtorch'))

end)

ESX.RegisterUsableItem('fixkit', function(source)

  local _source = source
  local xPlayer  = ESX.GetPlayerFromId(source)

  xPlayer.removeInventoryItem('fixkit', 1)

  TriggerClientEvent('esx_mecanojob:onFixkit', _source)
    TriggerClientEvent('esx:showNotification', _source, _U('you_used_repair_kit'))

end)

ESX.RegisterUsableItem('carokit', function(source)

  local _source = source
  local xPlayer  = ESX.GetPlayerFromId(source)

  xPlayer.removeInventoryItem('carokit', 1)

  TriggerClientEvent('esx_mecanojob:onCarokit', _source)
    TriggerClientEvent('esx:showNotification', _source, _U('you_used_body_kit'))

end)

----------------------------------
---- Ajout Gestion Stock Boss ----
----------------------------------

RegisterServerEvent('esx_mecanojob:getStockItem')
AddEventHandler('esx_mecanojob:getStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)
  
  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_mecano', function(inventory)

    local item = inventory.getItem(itemName)
    
     if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_mecanojob:getStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_mecano', function(inventory)
    cb(inventory.items)
  end)

end)

-------------
-- AJOUT 2 --
-------------

RegisterServerEvent('esx_mecanojob:putStockItems')
AddEventHandler('esx_mecanojob:putStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_mecano', function(inventory)
     
    local item = inventory.getItem(itemName)
    
    if item.count >= 0 then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)

--ESX.RegisterServerCallback('esx_mecanojob:putStockItems', function(source, cb)

--  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_policestock', function(inventory)
--    cb(inventory.items)
--  end)

--end)

ESX.RegisterServerCallback('esx_mecanojob:getPlayerInventory', function(source, cb)

  local xPlayer    = ESX.GetPlayerFromId(source)
  local items      = xPlayer.inventory

  cb({
    items      = items
  })

end)
