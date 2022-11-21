Config                            = {}
Config.DrawDistance               = 100.0

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement      = true
Config.EnableHelicopters          = false
Config.EnableMoneyWash            = true
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.MissCraft                  = 10 -- %


Config.AuthorizedVehicles = {
    { name = 'cheburek',  label = 'Доставка' }
}

Config.Blips = {
    
    Blip = {
      Pos     = { x = -1395.58, y = -605.05, z = 30.32 },
      Sprite  = 93,
      Display = 4,
      Scale   = 0.8,
      Colour  = 27,
    },

}

Config.Zones = {

    Cloakrooms = {
        Pos   = { x = -175.17, y = 305.45, z = 100.92 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 255, g = 187, b = 255 },
        Type  = 27,
    },

    Vaults = {
        Pos   = { x = -1389000000000000000000.13, y = -610.8, z = 29.32 },
        Size  = { x = 1.3, y = 1.3, z = 1.0 },
        Color = { r = 30, g = 144, b = 255 },
        Type  = 23,
    },

    Fridge = {
        Pos   = { x = -177.53, y = 305.94, z = 96.48 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Type  = 23,
    },

    Vehicles = {
        Pos          = { x = -181.57, y = 322.8, z = 96.96 },
        SpawnPoint   = { x = -183.88, y = 316.01, z = 97.8 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Type         = 23,
        Heading      = 207.43,
    },

    VehicleDeleters = {
        Pos   = { x = -182.09, y = 315.59, z = 97.8 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
        Type  = 1,
    },

--[[
    Helicopters = {
        Pos          = { x = 137.177, y = -1278.757, z = 28.371 },
        SpawnPoint   = { x = 138.436, y = -1263.095, z = 28.626 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Type         = 23,
        Heading      = 207.43,
    },

    HelicopterDeleters = {
        Pos   = { x = 133.203, y = -1265.573, z = 28.396 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
        Type  = 1,
    },
]]--

    BossActions = {
        Pos   = { x = 94.951, y = -1294.021, z = 28.268 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 0, g = 100, b = 0 },
        Type  = 1,
    },

-----------------------
-------- SHOPS --------

    Flacons = {
        Pos   = { x = 00.  },
        Size  = { x = 1.0, y = 1.0, z = 1.0 },
        Color = { r = 238, g = 0, b = 0 },
        Type  = 23,
        Items = {
            { name = 'sake',      label = _U('sake'),   price = 3 },
            { name = 'beerjap',    label = _U('beerjap'), price = 5 },
            { name = 'melon_soda',      label = _U('melon_soda'),   price = 4 },
            { name = 'matcha_tea',       label = _U('matcha_tea'),    price = 2 },
            { name = 'bubble_tea',     label = _U('bubble_tea'),  price = 7 },
            { name = 'calpis',    label = _U('calpis'), price = 2 }
        },
    },

   NoAlcool = {
        Pos   = { x = -179.09, y = 305.69, z = 20000.46 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 110, b = 0 },
        Type  = 23,
        Items = {
            { name = 'castella',        label = _U('castella'),     price = 4 },
            { name = 'dorayaki',    label = _U('dorayaki'), price = 3 },
            { name = 'gyozo',      label = _U('gyozo'),   price = 4 },
            { name = 'katsudon',      label = _U('katsudon'),   price = 7 },
            { name = 'miso_soup',    label = _U('miso_soup'), price = 2 },
	    { name = 'shabu_shabu',    label = _U('shabu_shabu'), price = 2 },
	    { name = 'sushi',    label = _U('sushi'), price = 2 },
	    { name = 'tempura',    label = _U('tempura'), price = 2 },
 	    { name = 'teriyaki',    label = _U('teriyaki'), price = 2 },
	    { name = 'yakitori',    label = _U('yakitori'), price = 2 },
            { name = 'ramen',    label = _U('ramen'), price = 1 }
        },
    },

  --[[   Apero = {
        Pos   = { x = -1375.74, y = -629.1, z = 29.82 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 142, g = 125, b = 76 },
        Type  = 23,
        Items = {
            { name = 'bolcacahuetes',   label = _U('bolcacahuetes'),    price = 7 },
            { name = 'bolnoixcajou',    label = _U('bolnoixcajou'),     price = 10 },
            { name = 'bolpistache',     label = _U('bolpistache'),      price = 15 },
            { name = 'bolchips',        label = _U('bolchips'),         price = 5 },
            { name = 'saucisson',       label = _U('saucisson'),        price = 25 },
            { name = 'grapperaisin',    label = _U('grapperaisin'),     price = 15 }
        },
    },

    Ice = {
        Pos   = { x = -1377.27, y = -630.09, z = 29.82 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 255, g = 255, b = 255 },
        Type  = 23,
        Items = {
            { name = 'ice',     label = _U('ice'),      price = 1 },
            { name = 'menthe',  label = _U('menthe'),   price = 2 }
        },
    },]]--

}


-----------------------
----- TELEPORTERS -----

Config.TeleportZones = {
  EnterBuilding = {
    Pos       = { x = -1386.37, y = -627.4, z = 29.82 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 1,
    Hint      = _U('e_to_enter_1'),
    Teleport  = { x = -1371.4, y = -626.05, z = 30.82 }
  },

  ExitBuilding = {
    Pos       = { x = -1371.4, y = -626.05, z = 29.82 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 1,
    Hint      = _U('e_to_exit_1'),
    Teleport  = { x = -1386.37, y = -627.4, z = 30.82 },
  },

--[[
  EnterHeliport = {
    Pos       = { x = 126.843, y = -729.012, z = 241.201 },
    Size      = { x = 2.0, y = 2.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Hint      = _U('e_to_enter_2),
    Teleport  = { x = -65.944, y = -818.589, z =  320.801 }
  },

  ExitHeliport = {
    Pos       = { x = -67.236, y = -821.702, z = 320.401 },
    Size      = { x = 2.0, y = 2.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Hint      = _U('e_to_exit_2'),
    Teleport  = { x = 124.164, y = -728.231, z = 241.801 },
  },
]]--
}


-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
  barman_outfit = {
    male = {
        ['tshirt_1'] = 2,  ['tshirt_2'] = 0,
        ['torso_1'] = 128,   ['torso_2'] = 0,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 36,
        ['pants_1'] = 80,   ['pants_2'] = 0,
        ['shoes_1'] = 33,   ['shoes_2'] = 0,
        ['chain_1'] = 0,  ['chain_2'] = 0
    },
    female = {
        ['tshirt_1'] = 60,   ['tshirt_2'] = 0,
        ['torso_1'] = 246,    ['torso_2'] = 2,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 4,
        ['pants_1'] = 55,   ['pants_2'] = 0,
        ['shoes_1'] = 53,    ['shoes_2'] = 6,
        ['chain_1'] = 16,    ['chain_2'] = 0
    }
  }
}