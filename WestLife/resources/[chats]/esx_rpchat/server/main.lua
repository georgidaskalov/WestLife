


AddEventHandler('es:invalidCommandHandler', function(source, command_args, user)
	CancelEvent()
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', _U('unknown_command', command_args[1]) } })
end)

AddEventHandler('chatMessage', function(source, name, message)
	if string.sub(message, 1, string.len('/')) ~= '/' then
		CancelEvent()

		if Config.EnableESXIdentity then name = GetPlayerName(source) end
		TriggerClientEvent('chat:addMessage', -1, { args = { _U('ooc_prefix', name), message }, color = { 255, 165, 0 } })
	end
end)

RegisterCommand('darkweb', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(11)
    local name = GetPlayerName(source)
	local newmsg = table.concat(args, ' ')
	--sendToDiscord("Command: "..rawCommand.."\n**Player: **"..name.."\n**Message: **"..newmsg.. "\n**Steam Hex: **"..GetPlayerIdentifier(source), 0)
	exports.JD_logsV3:createLog({
    EmbedMessage = "DARKWEB | "..GetPlayerName(source)..": "..rawCommand:gsub("darkweb", ""),
    player_id = SERVER_ID_PLAYER_ONE,
    channel = "chat",
    screenshot = false
})
        TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(28, 160, 242, 0.6); border-radius: 3px;"><i class="fab fa-twitter"></i> @Anonymous:<br> {1}</div>',
        args = { fal, newmsg }
    })
end, false)


RegisterCommand('twt', function(source, args, rawCommand)
	if source == 0 then
		print('rtxacily_rpchat: you can\'t use this command from rcon!')
		return
	end

	args = table.concat(args, ' ')
	local name = GetPlayerName(source)
	if Config.EnableESXIdentity then name = GetCharacterName(source) end
	--sendToDiscord("Command: "..rawCommand.."\n**Player: **"..name..  "\n**Message: **"..args.. "**\nSteam Hex: **"..GetPlayerIdentifier(source), 0)
	exports.JD_logsV3:createLog({
    EmbedMessage = "TWT | "..GetPlayerName(source)..": "..rawCommand:gsub("twt", ""),
    player_id = SERVER_ID_PLAYER_ONE,
    channel = "chat",
    screenshot = false
})
	TriggerClientEvent('chat:addMessage', -1, { args = { _U('twt_prefix', name), args }, color = { 0, 153, 204 } })
	--print(('%s: %s'):format(name, args))
end, false)


function GetCharacterName(source)
	local result = MySQL.Sync.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = @identifier', {
		['@identifier'] = GetPlayerIdentifiers(source)[1]
	})

	if result[1] and result[1].firstname and result[1].lastname then
		if Config.OnlyFirstname then
			return result[1].firstname
		else
			return ('%s %s'):format(result[1].firstname, result[1].lastname)
		end
	else
		return GetPlayerName(source)
	end
end

--[[function sendToDiscord(name, message, color)
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
  end ]]--