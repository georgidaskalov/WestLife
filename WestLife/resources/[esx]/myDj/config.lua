Config = {}
Translation = {}

Translation = {
    ['en'] = {
        ['DJ_interact'] = 'Press ~g~E~s~, to access the DJ desk',
        ['title_does_not_exist'] = '~r~This title does not exist!',
    }
}

Config.Locale = 'en'

Config.useESX = true -- can not be disabled without changing the callbacks
Config.enableCommand = false

Config.enableMarker = true -- purple marker at the DJ stations

Config.DJPositions = {
    {
        name = 'bahama',
        pos = vector3(-1378.58, -628.99, 30.63),
        requiredJob = nil, 
        range = 25.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },

    {
        name = 'beach',
        pos = vector3(-1519.1, -1476.77, 6.84),
        requiredJob = nil, 
        range = 50.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    }
    --{name = 'bahama', pos = vector3(-1381.01, -616.17, 31.5), requiredJob = 'DJ', range = 25.0}
}
