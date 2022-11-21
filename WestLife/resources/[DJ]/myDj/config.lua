-- Leaked By: Leaking Hub | J. Snow | leakinghub.com
Config = {}
Translation = {}

Translation = {
    ['de'] = {
        ['DJ_interact'] = 'Drücke ~g~E~s~, um auf das DJ Pult zuzugreifen',
        ['title_does_not_exist'] = '~r~Dieser Titel existiert nicht!',
    },

    ['en'] = {
        ['DJ_interact'] = 'Натиснете ~g~E~s~, за достъп до DJ пулт',
        ['title_does_not_exist'] = '~r~Това заглавие не съществува!',
    }
}

Config.Locale = 'en'

Config.useESX = true -- can not be disabled without changing the callbacks
Config.enableCommand = false

Config.enableMarker = true -- purple marker at the DJ stations

Config.DJPositions = {
    {
        name = 'bahama',
        pos = vector3(-419.035, -27.6741, 41.299),
        requiredJob = nil, 
        range = 25.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },
    {
        name = 'beach',
        pos = vector3(-1518.947, -1476.7599, 6.8418), 
        requiredJob = nil, 
        range = 25.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },
    {
        name = 'benny',
        pos = vector3(-214.606, -1313.5605, 34.6971), 
        requiredJob = 'mecano', 
        range = 25.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },


    --{name = 'bahama', pos = vector3(-1381.01, -616.17, 31.5), requiredJob = 'DJ', range = 25.0}
}