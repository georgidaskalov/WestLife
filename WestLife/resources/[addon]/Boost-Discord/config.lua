Config = {}
Config.ClientID = PUT_DISCORD_BOT_ID -- Put your discord bot client id here
Config.PlayerCount = 128
Config.PlayerText = "Играчи" -- Player text. Example Players 10/32
Config.ResourceTimer = 10 -- Time in witch resource updates in seconds
Config.UseESXIdentity = false -- Uses ESX Identity name not steam name
Config.RichPresence = 'ID: %s | %s | %s %s/%s'
Config.UseJobs = true
Config.Buttons = { -- Your buttons
    {index = 0,name = 'Discord',url = 'https://discord.gg/W6A7Wm3c2U'},
    {index = 1,name = 'Connect',url = 'fivem://connect/westliferp.ohost.gg:30120'}
}
