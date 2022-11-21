local ESX = nil
local robbableItems = {
	[1] = {chance = 6, id = 0, name = 'Cash', quantity = math.random(1, 100)}, -- really common
	[2] = {chance = 9, id = 'advancedlockpick', name = 'Шперц', quantity = 1}, -- rare
	[3] = {chance = 3, id = 'weed4g', name = 'Трева (4G)', quantity = math.random(1, 3)}, -- really common
	[4] = {chance = 5, id = 'weed_pooch', name = 'Bag of Weed', quantity = 1}, -- rare
	[5] = {chance = 9, id = 'goldNecklace', name = 'Златна огърлица', quantity = 1}, -- rare
	[6] = {chance = 9, id = 'ring', name = 'Пръстен', quantity = 1}, -- rare
	[7] = {chance = 3, id = 'coke_pooch', name = 'Bag of Coke', quantity = 1}, -- rare
	--[8] = {chance = 9, id = 'jewels', name = 'Бижута', quantity = math.random(1, 3)}, -- rare
	[8] = {chance = 5, id = 'battery', name = 'Battery', quantity = 1}, -- rare
	[9] = {chance = 5, id = 'binoculars', name = 'Бинокъл', quantity = 1}, -- rare
	[10] = {chance = 5, id = 'laptop', name = 'Лаптоп за игри', quantity = 1}, -- rare
	[11] = {chance = 3, id = 'acid', name = 'Вълшебна Гъба', quantity = 1}, -- rare
	[12] = {chance = 6, id = 'medikit', name = 'Аптечка', quantity = 1}, -- rare
	[13] = {chance = 9, id = 'rolex', name = 'Часовник', quantity = 1}, -- rare
	[14] = {chance = 3, id = 'rolpaper', name = 'Rolling Paper', quantity = math.random(1, 5)}, -- rare
	[15] = {chance = 3, id = 'steel', name = 'Steel', quantity = 1}, -- rare
	[16] = {chance = 3, id = 'cocaine', name = 'Кокаин', quantity = 1}, -- rare
	[17] = {chance = 3, id = 'rubber', name = 'Rubber', quantity = 1}, -- rare
   
}

TriggerEvent('esx:getSharedObject', function(obj)
 ESX = obj
end)

ESX.RegisterUsableItem('lockpick', function(source)
 local source = tonumber(source)
 local xPlayer = ESX.GetPlayerFromId(source)
 	local xPlayers = ESX.GetPlayers()

	local cops = 0
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' or xPlayer.job.name == 'sheriff' then
			cops = cops + 1
		end
	end
	if cops >= 2 then
		TriggerClientEvent('houseRobberies:attempt', source, xPlayer.getInventoryItem('lockpick').count)
	else
		TriggerClientEvent('notification', source, 'Няма достатъчно полицаи', 2)
	end
end)

RegisterServerEvent('houseRobberies:removeLockpick')
AddEventHandler('houseRobberies:removeLockpick', function()
 local source = tonumber(source)
 local xPlayer = ESX.GetPlayerFromId(source)
 local chance = math.random(1,5)
 if chance == 5 or chance == 10  or chance == 7 then
	
	xPlayer.removeInventoryItem('lockpick', 1)
	TriggerClientEvent('notification', source, 'Шперца се счупи.', 2)
 end
end)

RegisterServerEvent('houseRobberies:searchItem')
AddEventHandler('houseRobberies:searchItem', function()
 	local source = tonumber(source)
 	--local item = {}
 	local xPlayer = ESX.GetPlayerFromId(source)
 	--local gotID = {}

	for i=1, math.random(1,3) do
  		local item = robbableItems[math.random(1,#robbableItems)]
  		--print(item)
  		if math.random(1, 50) >= item.chance then
   			--if not gotID[item.id] then
    		--gotID[item.id] = true
			if xPlayer.canCarryItem(item.id,item.quantity) then
				xPlayer.addInventoryItem(item.id, item.quantity)
			else
				TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Нямаш място'})
			end
  			 --end
  		end
 	end
end)

RegisterServerEvent('houseRobberies:giveMoneySafe')
AddEventHandler('houseRobberies:giveMoneySafe', function()
 local source = tonumber(source)
 local xPlayer = ESX.GetPlayerFromId(source)
 local cash = math.random(100, 3000)
 local ccChance = math.random(1,50)

	if ccChance >= 50 then
		xPlayer.addInventoryItem('WEAPON_PISTOL_blueprint',1)
	end
	
	if ccChance >= 40 then
		xPlayer.addInventoryItem("highgrademaleseed",math.random(1,2))
	elseif ccChance >= 35 then
		xPlayer.addInventoryItem("highgradefemaleseed",math.random(1,2))
	end
 
	TriggerClientEvent('notification', source, 'Намери $'..cash)
	xPlayer.addMoney(cash)
end)
