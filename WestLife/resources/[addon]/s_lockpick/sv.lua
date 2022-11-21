ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
print('started resource')

ESX.RegisterUsableItem('carlockpick', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	--xPlayer.removeInventoryItem("carlockpick" , 1)
	TriggerClientEvent('s_lockpick:startlockpicking', source) 
end)


RegisterServerEvent('s_lockpick:removeItem')
AddEventHandler('s_lockpick:removeItem', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem("carlockpick" , 1)
end)