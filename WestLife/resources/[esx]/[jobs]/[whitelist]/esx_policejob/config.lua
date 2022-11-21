Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 30 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(365.3984, -1587.908, 29.292),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 26
		},

		Cloakrooms = {
			vector3(368.8535, -1602.0770, 29.2920),  -- center 368.8535, -1602.0770, 29.2920, 4.9015
			--vector3(1862.44, 3689.26, 34.31)  -- SANDY
		},

		Armories = {
			vector3(365.7087, -1609.1793, 29.2920),  -- center 365.7087, -1609.1793, 29.2920, 223.7982
			--vector3(1862.44, 3689.26, 34.31)  -- SANDY
		},

		Vehicles = {
			{
				Spawner = vector3(385.64, -1624.54, 29.29), -- 385.6452, -1624.5496, 29.2921, 320.5918
				InsideShop = vector3(376.9306, -1631.48, 27.962), --376.9306, -1631.4800, 27.9626, 318.0962
				SpawnPoints = {
					{ coords = vector3(395.1570, -1626.11, 29.29), heading = 50.90, radius = 7.0 },
					{ coords = vector3(397.4594, -1623.83, 29.29), heading = 48.20, radius = 6.0 }

				}
			},


		--[[	{  -- SANDY
				Spawner = vector3(1868.95, 3688.44, 33.75),
				InsideShop = vector3(228.5, -993.5, -99.0),
				SpawnPoints = {
					{ coords = vector3(1871.92, 3687.32, 33.67), heading = 201.91, radius = 3.0 },
					{ coords = vector3(1866.92, 3682.99, 33.72), heading = 201.91, radius = 3.0 }
				}
			} ]]--



			-- {
			-- 	Spawner = vector3(473.3, -1018.8, 28.0),
			-- 	InsideShop = vector3(228.5, -993.5, -99.0),
			-- 	SpawnPoints = {
			-- 		{ coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0 },
			-- 		{ coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0 }
			-- 	}
			-- }
		},

		Helicopters = {
			{
				Spawner = vector3(374.4422, -1597.913, 36.948), -- 374.4422, -1597.913, 36.948, 51.3237
				InsideShop = vector3(362.960, -1598.4677, 36.94),
				SpawnPoints = {
					{ coords = vector3(362.960, -1598.4677, 36.94), heading = 322.12, radius = 8.0 }
				}
			}
		},

		BossActions = {
			vector3(452.0538, -973.755, 10030.689)
		}

	}

}

Config.AuthorizedWeapons = {
	recruit = {
	{ weapon = 'WEAPON_STUNGUN', price = 0 },		--OK
	{ weapon = 'WEAPON_FLASHLIGHT', price = 0 },
	{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },
	},

	officer = {
			--OK
	},

	sergeant = {
		--OK
	},


	lieutenant = {
		--OK
	},

	inspector = {
			--OK
	},


	komisar1 = {
		--OK
	},



	chef = {
		{ weapon = 'WEAPON_COMBATPISTOL', components = { 0, 0, 0, 0, nil }, price = 0 },	--OK
		{ weapon = 'WEAPON_SPECIALCARBINE', components = { 0, 0, 0, 0, 0, 0, 0, 0, nil }, price = 0 },	--OK
		{ weapon = 'WEAPON_VINTAGEPISTOL', price = 0 },	--OK
		{ weapon = 'WEAPON_BULLPUPSHOTGUN', components = { 0, 0, 0, nil }, price = 0 },	-- ДОБАВЕНО ОРЪЖИЕ OK
		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },		--OK
		{ weapon = 'WEAPON_STUNGUN', price = 0 },		--OK
		--{ weapon = 'WEAPON_SMOKEGRENADE', price = 0 },
		{ weapon = 'WEAPON_FLARE', price = 0 },
		{ weapon = 'WEAPON_FLASHLIGHT', price = 0 }		--OK
	},

	boss = {

		{ weapon = 'WEAPON_COMBATPISTOL', components = { 0, 0, 0, 0, nil }, price = 0 },	--OK
		{ weapon = 'WEAPON_SPECIALCARBINE', components = { 0, 0, 0, 0, 0, 0, 0, 0, nil }, price = 0 },	--OK
		{ weapon = 'WEAPON_BULLPUPSHOTGUN', components = { 0, 0, 0, nil }, price = 0 },	-- ДОБАВЕНО ОРЪЖИЕ OK
		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },		--OK
		{ weapon = 'WEAPON_STUNGUN', price = 0 },		--OK
		{ weapon = 'WEAPON_VINTAGEPISTOL',  price = 0 },	--OK
		--{ weapon = 'WEAPON_SMOKEGRENADE', price = 0 },
		{ weapon = 'WEAPON_FLARE', price = 0 },
		{ weapon = 'WEAPON_FLASHLIGHT', price = 0 }		--OK

	}
}

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'polgs350', label = 'Бял Лексус ', price = 300 },
		{ model = 'police6', label = 'Форд Джип ', price = 300 },
		{ model = 'rmodpolice', label = 'GT-R', price = 300 },
		{ model = '1200rt', label = 'Police ', price = 300}
	},

	recruit = {
		--{ model = 'polgs350', label = 'Police ', price = 300 }
	},

	officer = {
		--{ model = 'polgs350', label = 'Police ', price = 300 }
	},

	sergeant = {
		--{ model = 'polgs350', label = 'Police ', price = 300 }
	},


	lieutenant = {
		{ model = 'fbi4', label = 'БМВ 320', price = 300}
		--{ model = 'polgs350', label = 'Police ', price = 300 }
	},

	inspector = {
		--{ model = 'polgs350', label = 'Police ', price = 300 }
	},


	komisar1 = {
		--{ model = '1200rt', label = 'Police ', price = 300},
		{ model = 'code3bmw', label = 'БМВ мотор', price = 300},
		{ model = 'code318tahoe', label = 'Шевролет джип ', price = 300},
		{ model = 'durango2018', label = 'SUV Dodge', price = 300},
		{ model = 'rmodpolice', label = 'GT-R', price = 300 },
		{ model = 'fbi4', label = 'БМВ 320', price = 300}
		--{ model = 'police2', label = 'Police ', price = 300},
		--{ model = 'pranger', label = 'Police ', price = 300 },
		--{ model = 'polgs350', label = 'Police ', price = 300 },
		--{ model = 'riot', label = 'Police ', price = 300 }

	},

	chef = {
		--{ model = '1200rt', label = 'Полицейски мотор', price = 300},
		{ model = 'code3bmw', label = 'БМВ мотор ', price = 300},
		{ model = 'code318tahoe', label = 'Шевролет джип ', price = 300},
		{ model = 'rmodpolice', label = 'GT-R', price = 300 },
		{ model = 'fbi4', label = 'БМВ 320', price = 300}
		--{ model = 'pranger', label = 'Police ', price = 300 },
		--{ model = 'polgs350', label = 'Police ', price = 300 },
		--{ model = 'riot', label = 'Police ', price = 300 }
	},

	boss = {	-- ГЛАВЕН КОМИСАР - 5
		--{ model = '1200rt', label = 'Полицейски мотор', price = 300},
		{ model = 'code3bmw', label = 'БМВ мотор', price = 300},
		{ model = 'code318tahoe', label = 'Шевролет джип ', price = 300},
		{ model = 'durango2018', label = 'SUV Dodge', price = 300},
		{ model = 'rmodpolice', label = 'GT-R', price = 300 },
		{ model = 'fbi4', label = 'БМВ 320', price = 300 },
		{ model = 'audiq7', label = 'Ауди цивилно', price = 300}
	},
}

Config.AuthorizedHelicopters = {
	recruit = {

	},

	officer = {

	},

	sergeant = {

	},

	lieutenant = {

	},

	inspector = {

	},

	komisar1 = {
		{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 1150 }
	},

	chef = {
		{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 1150 }
	},

	boss = {
		{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 1150 }
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	recruit_wear = { --0
		male = {
			['tshirt_1'] = 43,  ['tshirt_2'] = 0,
			['torso_1'] = 2,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 19,
			['pants_1'] = 67,   ['pants_2'] = 0,
			['bproof_1'] = 51,  ['bproof_2'] = 0,
			['shoes_1'] = 86,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 104,  ['tshirt_2'] = 1,
			['torso_1'] = 136,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 20,
			['pants_1'] = 50,   ['pants_2'] = 1,
			['bproof_1'] = 41,  ['bproof_2'] = 0,
			['shoes_1'] = 50,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	officer_wear = { -- 1
		male = {
			['tshirt_1'] = 43,  ['tshirt_2'] = 0,
			['torso_1'] = 2,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 19,
			['pants_1'] = 67,   ['pants_2'] = 0,
			['bproof_1'] = 51,  ['bproof_2'] = 0,
			['shoes_1'] = 86,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 104,  ['tshirt_2'] = 0,
			['torso_1'] = 136,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 20,
			['bproof_1'] = 41,  ['bproof_2'] = 0,
			['pants_1'] = 50,   ['pants_2'] = 1,
			['shoes_1'] = 50,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	sergeant_wear = { -- 2
		male = {
			['tshirt_1'] = 52,  ['tshirt_2'] = 1,
			['torso_1'] = 183,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 19,
			['bproof_1'] = 7,  ['bproof_2'] = 0,
			['pants_1'] = 70,   ['pants_2'] = 1,
			['shoes_1'] = 86,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 104,  ['tshirt_2'] = 1,
			['torso_1'] = 195,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 20,
			['bproof_1'] = 37,  ['bproof_2'] = 0,
			['pants_1'] = 29,   ['pants_2'] = 0,
			['shoes_1'] = 62,   ['shoes_2'] = 20,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	
	lieutenant_wear = { -- currently the same as intendent_wear  -- 3
	male = {
			['tshirt_1'] = 52,  ['tshirt_2'] = 0,
			['torso_1'] = 183,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 19,
			['bproof_1'] = 7,  ['bproof_2'] = 0,
			['pants_1'] = 70,   ['pants_2'] = 1,
			['shoes_1'] = 86,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
	},
	female = {
			['tshirt_1'] = 104,  ['tshirt_2'] = 1,
			['torso_1'] = 195,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 20,
			['bproof_1'] = 37,  ['bproof_2'] = 0,
			['pants_1'] = 29,   ['pants_2'] = 0,
			['shoes_1'] = 62,   ['shoes_2'] = 20,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	inspector_wear = { -- currently the same as chef_wear  --4  slujeben advokat
	male = {
		['tshirt_1'] = 16,  ['tshirt_2'] = 0,
		['torso_1'] = 198,   ['torso_2'] = 3,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 48,
		['pants_1'] = 19,   ['pants_2'] = 3,
		['shoes_1'] = 39,   ['shoes_2'] = 0,
		['helmet_1'] = 10,  ['helmet_2'] = 7,
		['chain_1'] = 1,    ['chain_2'] = 0,
		['ears_1'] = 2,     ['ears_2'] = 0
	},
	female = {
		['tshirt_1'] = 39,  ['tshirt_2'] = 0,
		['torso_1'] = 28,   ['torso_2'] = 3,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 44,
		['pants_1'] = 77,   ['pants_2'] = 0,
		['shoes_1'] = 50,   ['shoes_2'] = 0,
		['helmet_1'] = 10,  ['helmet_2'] = 4,
		['chain_1'] = 0,    ['chain_2'] = 0,
		['ears_1'] = 0,     ['ears_2'] = 0
	}
	},
	
	komisar1_wear = { -- currently the same as chef_wear  6  komisar
	male = {
		['tshirt_1'] = 52,  ['tshirt_2'] = 1,
		['torso_1'] = 3,   ['torso_2'] = 0,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 19,
		['bproof_1'] = 52,  ['bproof_2'] = 0,
		['pants_1'] = 67,   ['pants_2'] = 0,
		['shoes_1'] = 86,   ['shoes_2'] = 0,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['chain_1'] = 0,    ['chain_2'] = 0,
		['ears_1'] = 2,     ['ears_2'] = 0
	},
	female = {
			['tshirt_1'] = 104,  ['tshirt_2'] = 1,
			['torso_1'] = 195,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 20,
			['bproof_1'] = 42,  ['bproof_2'] = 0,
			['pants_1'] = 29,   ['pants_2'] = 0,
			['shoes_1'] = 50,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
	}
	},
	bop_wear = { -- currently the same as chef_wear   -- 5
	male = {
		['tshirt_1'] = 16,  ['tshirt_2'] = 0,
		['torso_1'] = 198,   ['torso_2'] = 5,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 48,
		['pants_1'] = 19,   ['pants_2'] = 3,
		['shoes_1'] = 39,   ['shoes_2'] = 0,
		['helmet_1'] = 13,  ['helmet_2'] = 5,
		['chain_1'] = 1,    ['chain_2'] = 0,
		['ears_1'] = 2,     ['ears_2'] = 0
	},
	female = {
		['tshirt_1'] = 39,  ['tshirt_2'] = 0,
			['torso_1'] = 28,   ['torso_2'] = 3,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 77,   ['pants_2'] = 0,
			['shoes_1'] = 50,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 4,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
	}
	},
	
	chef_wear = { -- currently the same as chef_wear
	male = {
		['tshirt_1'] = 52,  ['tshirt_2'] = 1,
		['torso_1'] = 3,   ['torso_2'] = 2,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 19,
		['bproof_1'] = 52,  ['bproof_2'] = 0,
		['pants_1'] = 67,   ['pants_2'] = 0,
		['shoes_1'] = 86,   ['shoes_2'] = 0,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['chain_1'] = 0,    ['chain_2'] = 0,
		['ears_1'] = 2,     ['ears_2'] = 0
	},
	female = {
			['tshirt_1'] = 104,  ['tshirt_2'] = 1,
			['torso_1'] = 195,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 20,
			['bproof_1'] = 42,  ['bproof_2'] = 0,
			['pants_1'] = 29,   ['pants_2'] = 0,
			['shoes_1'] = 50,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
	}
	},
	boss_wear = { -- currently the same as chef_wear
	male = {
		['tshirt_1'] = 109,  ['tshirt_2'] = 1,
		['torso_1'] = 305,   ['torso_2'] = 0,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 20,
		['bproof_1'] = 23,  ['bproof_2'] = 0,
		['pants_1'] = 118,   ['pants_2'] = 1,
		['shoes_1'] = 86,   ['shoes_2'] = 0,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['chain_1'] = 0,    ['chain_2'] = 0,
		['ears_1'] = 2,     ['ears_2'] = 0
	},
	female = {
			['tshirt_1'] = 104,  ['tshirt_2'] = 1,
			['torso_1'] = 195,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 20,
			['bproof_1'] = 42,  ['bproof_2'] = 0,
			['pants_1'] = 29,   ['pants_2'] = 0,
			['shoes_1'] = 50,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
	}
	},
	bullet_wear = {
		male = {
			--['bproof_1'] = 45,  ['bproof_2'] = 0
		},
		female = {
			--['bproof_1'] = 7,  ['bproof_2'] = 0
		}
	}


}
