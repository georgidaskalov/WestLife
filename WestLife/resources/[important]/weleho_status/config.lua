Config = {}

Config.Debug = false

Config.Webhook = 'Put your webhook'
Config.ServerName = 'WestLife RP'

Config.MessageId = 'put your message id' --Copy messageid from deployed message and restart script!

Config.UpdateTime = 1000*60*1 -- 1 minute
Config.Use24hClock = true -- false = 12h clock
Config.JoinLink = 'https://cfx.re/join/q5lgv6' -- Make sure that JoinLink is URL, like: https://cfx.re/join/xp34mg, currenlty does not support Redm

Config.EmbedColor = 3158326

Config.Locale = 'en'

Config.Locales = {
    ['fi'] = {
        ['date'] = 'Päivä',
        ['time'] = 'Aika',
        ['players'] = 'Pelaajia',
        ['connect'] = 'Yhdistä palvelimelle',
    },
    ['en'] = {
        ['date'] = 'Дата',
        ['time'] = 'Час',
        ['players'] = 'Играчи',
        ['connect'] = 'Влез в сървъра',
    }
}
