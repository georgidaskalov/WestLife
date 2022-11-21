local DISCORD_WEBHOOK = "PUT DISCORD WEBHOOK HERE" -- DISCORD WEEBHOOK HERE
local DISCORD_NAME = "Bankomat-logs"
local DISCORD_IMAGE = "https://imgur.com/PgQwgK0"

-------------------------------------
------- Created by Hamza#1234 -------
------------------------------------- 
local ESX = nil

local CoolDownTimerATM = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Event for adding cooldown to player:
RegisterServerEvent("esx_atmRobbery:CooldownATM")
AddEventHandler("esx_atmRobbery:CooldownATM",function()
	local xPlayer = ESX.GetPlayerFromId(source)
	table.insert(CoolDownTimerATM,{CoolDownTimerATM = GetPlayerIdentifier(source), time = ((Config.RobCooldown * 60000))})
end)

-- Cooldown timer thread:
Citizen.CreateThread(function() -- do not touch this thread function!
	while true do
	Citizen.Wait(1000)
		for k,v in pairs(CoolDownTimerATM) do
			if v.time <= 0 then
				RemoveCooldownTimer(v.CoolDownTimerATM)
			else
				v.time = v.time - 1000
			end
		end
	end
end)

-- Callback to get cooldown:
ESX.RegisterServerCallback("esx_atmRobbery:isRobbingPossible",function(source,cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local waitTimer = GetTimeForCooldown(GetPlayerIdentifier(source))
	if not CheckCooldownTime(GetPlayerIdentifier(source)) then
		cb(false)
	else
		TriggerClientEvent("esx:showNotification",source,string.format("Вие може да ограбите след: ~b~%s~s~ минути",waitTimer))
		cb(true)
	end
end)

-- Callback to get police count:
ESX.RegisterServerCallback("esx_atmRobbery:getOnlinePoliceCount",function(source,cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local Players = ESX.GetPlayers()
	local policeOnline = 0
	for i = 1, #Players do
		local xPlayer = ESX.GetPlayerFromId(Players[i])
		if xPlayer["job"]["name"] == "police" then
			policeOnline = policeOnline + 1
		end
	end
	if policeOnline >= Config.RequiredPolice then
		cb(true)
	else
		cb(false)
		TriggerClientEvent('esx:showNotification', source, "Няма ~r~достатъчно~s~ на смяна ~b~полицай~s~ във ~y~града~s~")
	end
end)

-- Callback to get hacker device count:
ESX.RegisterServerCallback("esx_atmRobbery:getHackerDevice",function(source,cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getInventoryItem("hackerDevice").count >= 1 then
		cb(true)
	else
		cb(false)
		TriggerClientEvent('esx:showNotification', source, "Трябва ви ~y~Хакерско Устройство~s~ за да ограбите банкомата!")
	end
end)

-- Event to reward after successfull robbery
RegisterServerEvent("esx_atmRobbery:success")
AddEventHandler("esx_atmRobbery:success",function()
	local xPlayer = ESX.GetPlayerFromId(source)
	sendToDiscord("Банкомат", "\n Беше обран от \n**Player: **"..GetPlayerName(source).. "**\nSteam Hex: **"..GetPlayerIdentifier(source), 65280)
    local reward = math.random(Config.MinReward,Config.MaxReward)
	if Config.EnableDirtyCash then
		xPlayer.addAccountMoney('black_money', tonumber(reward))			
		xPlayer.removeInventoryItem("hackerDevice" , 1)
		TriggerClientEvent("esx:showNotification",source,"Ти взе ~r~$"..reward.. "~s~ мръсни пари~s~")
	else
		xPlayer.addMoney(reward)
		TriggerClientEvent("esx:showNotification",source,"Ти взе ~r~$"..reward.. "~s~ кеш~s~")
	end
end)

-- Trigger message and blip for Police:
RegisterServerEvent('esx_atmRobbery:PoliceNotify')
AddEventHandler('esx_atmRobbery:PoliceNotify', function(targetCoords, streetName)
	TriggerClientEvent('esx_atmRobbery:outlawNotify', -1,string.format(Config.DispatchMessage,streetName))
	TriggerClientEvent('esx_atmRobbery:OutlawBlipSettings', -1, targetCoords)
end)

-- Do not touch:
function RemoveCooldownTimer(source)
	for k,v in pairs(CoolDownTimerATM) do
		if v.CoolDownTimerATM == source then
			table.remove(CoolDownTimerATM,k)
		end
	end
end
function GetTimeForCooldown(source)
	for k,v in pairs(CoolDownTimerATM) do
		if v.CoolDownTimerATM == source then
			return math.ceil(v.time/60000)
		end
	end
end
function CheckCooldownTime(source)
	for k,v in pairs(CoolDownTimerATM) do
		if v.CoolDownTimerATM == source then
			return true
		end
	end
	return false
end

function sendToDiscord(name, message, color)
	local connect = {
		{
			["color"] = color,
			["title"] = "**".. name .."**",
			["description"] = message,
			["footer"] = {
				["text"] = " Logger by Fores#4148            ".. os.date("%X") .." "
			},
		}
	}
	PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
end