Config = {}

-- # Locale to be used. You can create your own by simple copying the 'en' and translating the values.
Config.Locale = 'en'

-- # By how many services a player's community service gets extended if he tries to escape
Config.ServiceExtensionOnEscape		= 7

-- # Don't change this unless you know what you are doing.
Config.ServiceLocation 				= {x =  170.43, y = -990.7, z = 30.09}

-- # Don't change this unless you know what you are doing.
Config.ReleaseLocation				= {x = 427.33, y = -979.51, z = 30.2}


-- # Don't change this unless you know what you are doing.
Config.ServiceLocations = {
	{ type = "cleaning", coords = vector3(170.0, -1006.0, 29.34) },
	{ type = "cleaning", coords = vector3(177.0, -1007.94, 29.33) },
	{ type = "cleaning", coords = vector3(181.58, -1009.46, 29.34) },
	{ type = "cleaning", coords = vector3(189.33, -1009.48, 29.34) },
	{ type = "cleaning", coords = vector3(195.31, -1016.0, 29.34) },
	{ type = "cleaning", coords = vector3(169.97, -1001.29, 29.34) },
	{ type = "cleaning", coords = vector3(164.74, -1008.0, 29.43) },
	{ type = "cleaning", coords = vector3(163.28, -1000.55, 29.35) }
}



Config.Uniforms = {
	prison_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1']  = 108, ['torso_2']  = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms']     = 15, ['pants_1']  = 9,
			['pants_2']  = 4,   ['shoes_1']  = 16,
			['shoes_2']  = 7,  ['chain_1']  = 0,
			['chain_2']  = 0
		},
		
		-- arms was 119 male and 120 female
		female = {
			['tshirt_1'] = 14,   ['tshirt_2'] = 0,
			['torso_1']  = 10,  ['torso_2']  = 6,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms']     = 15,  ['pants_1'] = 5,
			['pants_2']  = 10,  ['shoes_1']  = 1,
			['shoes_2']  = 3,   ['chain_1']  = 0,
			['chain_2']  = 0
		}
	}
}
