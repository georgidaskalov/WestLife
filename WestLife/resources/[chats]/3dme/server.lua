-- @desc Server-side /me handling
-- @author Elio
-- @version 3.0

-- Pre-load the language
local lang = Languages[Config.language]

-- @desc Handle /me command
local function onMeCommand(source, args)
    local text = " " .. lang.prefix .. table.concat(args, " ") .. " "
    TriggerClientEvent('3dme:shareDisplay', -1, text, source)
	exports.JD_logsV3:createLog({
    EmbedMessage = "ME | "..GetPlayerName(source)..": "..text,
    player_id = SERVER_ID_PLAYER_ONE,
    channel = "chat",
    screenshot = false
})
	
end

-- Register the command
RegisterCommand(lang.commandName, onMeCommand)
