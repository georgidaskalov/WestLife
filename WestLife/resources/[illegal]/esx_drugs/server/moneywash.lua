local DISCORD_WEBHOOK = "https://discord.com/api/webhooks/951989711969345586/T6W0yW7jElLsKiBhp6DGzEQ0AJX8AS0_ONhuBpjFGBG_fktPLD4-xcF_zrKPSW0Ym9jb" -- DISCORD WEEBHOOK HERE
local DISCORD_NAME = "moneywash-logs"
local DISCORD_IMAGE = "https://imgur.com/PgQwgK0"

local discounted = {
	"steam:110000103ceb82c",
	"steam:1100001399f3214"
}

RegisterServerEvent('esx_illegal:Wash')
AddEventHandler('esx_illegal:Wash', function()
	local multiplier = 40
	local identifier = GetPlayerIdentifiers(source)[1]
	if checkDiscounted(identifier) then
		multiplier = 20
	else
		multiplier = 40
	end

	local xPlayer = ESX.GetPlayerFromId(source)
	local ammount = xPlayer.getAccount('black_money').money
	local percentToRemove = (ammount * multiplier) / 100 --takes 40% as commission
	xPlayer.removeAccountMoney('black_money', ammount)
	local realreward = math.floor(ammount - percentToRemove)
	xPlayer.addMoney(realreward)

	sendToDiscord("**Player: ** " .. GetPlayerName(source) .. " ** \nWashed:** " .. ammount .. " **\nAnd received:** " .. realreward .. " **\nSteam Hex: **" .. GetPlayerIdentifier(source), 16711680)
	TriggerClientEvent('esx:showNotification', source, _U('moneywash_washed', realreward))
	TriggerClientEvent('esx:showNotification', source, _U('commission', percentToRemove))
end)

ESX.RegisterServerCallback('esx_illegal:GetBlackmoney', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local ammount = xPlayer.getAccount('black_money').money

	cb(ammount)
end)

function sendToDiscord(name, message, color)
	local connect = {
		{
			["color"] = color,
			["title"] = "**" .. name .. "**",
			["description"] = message,
			["footer"] = {
				["text"] = " Logger by Fores#4148            " .. os.date("%X") .. " "
			},
		}
	}
	PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers)
	end, 'POST', json.encode({ username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE }), { ['Content-Type'] = 'application/json' })
end

function checkDiscounted(id)
	for k, v in pairs(discounted) do
		if id == v then
			return true
		end
	end

	return false
end
