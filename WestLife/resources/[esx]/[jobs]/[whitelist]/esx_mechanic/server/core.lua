local ESX = nil

TriggerEvent("esx:getSharedObject", function(library)
    ESX = library
end)

RegisterServerEvent('mechanic:sv:removeCash')
AddEventHandler('mechanic:sv:removeCash', function(amount)
	local src = source

    amount = tonumber(1)
    if (not amount or amount <= 0) then return end
    
    local esxPlayer = ESX.GetPlayerFromId(src)
    if (esxPlayer) then
		if esxPlayer.getMoney() >= amount then
			esxPlayer.removeMoney(amount)
		else
			return
		end
    end
end)

RegisterServerEvent('mechanic:sv:updateProps')
AddEventHandler('mechanic:sv:updateProps', function(props)
	MySQL.Async.execute("UPDATE `owned_vehicles` SET `props` = '" .. json.encode(props) .. "' WHERE `plate` = '" .. props.plate .. "'")
end)

RegisterCommand("fine", function(source, args, rawCommand)
	local src = source
	local esxPlayer = ESX.GetPlayerFromId(src)
	if esxPlayer.getJob().name == 'mechanic' then
		TriggerClientEvent("ws:fine",src)
	end
end, false)