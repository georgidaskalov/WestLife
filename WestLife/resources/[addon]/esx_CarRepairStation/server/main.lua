ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('carfixstation:costRepair')
AddEventHandler('carfixstation:costRepair', function(cost)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local mechanicsonline = 0
	local xPlayers = ESX.GetPlayers()
	
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'mechanic' or xPlayer.job.name == 'mecano' then
			mechanicsonline = mechanicsonline + 1
		end
	end
	
	
	if 	mechanicsonline >= 1 then
		TriggerClientEvent('esx:showNotification',_source , _U ('mechanics_online'))
	elseif xPlayer.getMoney() >= cost then	
		xPlayer.removeMoney(cost)
		TriggerClientEvent('carfixstation:fixCar', _source)
		TriggerClientEvent('esx:showNotification', _source, _U('cost_repair', cost))
	else
	TriggerClientEvent('esx:showNotification', _source, _U('not_enough_money'))
	end
end)