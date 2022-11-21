ESX = nil


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('pawnItem')
AddEventHandler('pawnItem', function(itemName, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = Config.PawnShopPrices[itemName]
	local xItem = xPlayer.getInventoryItem(itemName)

	if not price then
		print(('mojito-recycleshop%s attempted to sell an invalid item!'):format(xPlayer.identifier))
		return
	end

	if xItem.count < amount then
		xPlayer.showNotification("~r~You do not have enough of this item.")
		return
	end

	price = ESX.Math.Round(price * amount)

	if Config.GiveDirty then
		xPlayer.addAccountMoney('black_money', price)
	else
		xPlayer.addInventoryItem('metal_fragment', price)
	end

	xPlayer.removeInventoryItem(xItem.name, amount)
	xPlayer.showNotification('You\'ve recycled ~b~'..amount..'x~s~ ~y~'..xItem.name..'~s~ and got ~g~$'..price..'~s~', amount, xItem.label, ESX.Math.GroupDigits(price))
end)
