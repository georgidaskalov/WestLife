ESX = nil 
TriggerEvent("esx:getSharedObject", function(obj)
    ESX = obj
end)

local label = [[

				────────────────────────────────────────────────────────
				─██████──████████─████████──████████─████████──████████─
				─██░░██──██░░░░██─██░░░░██──██░░░░██─██░░░░██──██░░░░██─
				─██░░██──██░░████─████░░██──██░░████─████░░██──██░░████─
				─██░░██──██░░██─────██░░░░██░░░░██─────██░░░░██░░░░██───
				─██░░██████░░██─────████░░░░░░████─────████░░░░░░████───
				─██░░░░░░░░░░██───────████░░████─────────██░░░░░░██─────
				─██░░██████░░██─────────██░░██─────────████░░░░░░████───
				─██░░██──██░░██─────────██░░██─────────██░░░░██░░░░██───
				─██░░██──██░░████───────██░░██───────████░░██──██░░████─
				─██░░██──██░░░░██───────██░░██───────██░░░░██──██░░░░██─
				─██████──████████───────██████───────████████──████████─
				────────────────────────────────────────────────────────
                                   Discord kyx#4744 
]]


Citizen.CreateThread(function()

    print(label)

end)

RegisterNetEvent('kx-shops:tendero')
AddEventHandler('kx-shops:tendero', function(price, basket, account)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    if account == "cash" then
        xPlayer.removeMoney(price)
    else
        xPlayer.removeAccountMoney(account, price)
    end
    
    for i=1, #basket do
        xPlayer.addInventoryItem(basket[i]["value"], basket[i]["amount"])
    end

    

end)

ESX.RegisterServerCallback('kx-shops:CheckMoney', function(source, cb, price, account)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local money
    if account == "cash" then
        money = xPlayer.getMoney()
    else
        money = xPlayer.getAccount(account)["money"]
    end

    if money >= price then
        cb(true)
    end
    cb(false)
end)

pNotify = function(message, messageType, messageTimeout)
	TriggerClientEvent("pNotify:SendNotification", source, {
        text = message,
		type = messageType,
		queue = "global",
		timeout = messageTimeout,
		layout = "bottomLeft"
	})
end