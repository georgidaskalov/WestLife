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
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(-465.6719, 5999.4795, 31.3006),
			Sprite  = 60,
			Display = 4,
			Scale   = 0.8,
			Colour  = 11
		},

		Cloakrooms = {
			vector3(-473.76, 5984.41, 31.42)
		},

		Armories = {
			vector3(-481.26, 5988.45, 31.42)
		},

		Vehicles = {
			{
				Spawner = vector3(1885.030, 3693.490, 10033.541),
				InsideShop = vector3(-363.0073, 6072.501, 30.4982),
				SpawnPoints = {
					{ coords = vector3(1881.87, 3693.19, 33.28), heading = 28.53, radius = 6.0 },
					{ coords = vector3(1874.79, 3705.04, 33.28), heading = 21.03, radius = 6.0 }
				
				}
			},

			{
				Spawner = vector3(473.3, -1018.8, 10028.0),
				InsideShop = vector3(-363.0073, 6072.501, 30.4982),
				SpawnPoints = {
					{ coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0 },
					{ coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(1883.623, 3672.290, 10033.413),
				InsideShop = vector3(1902.678, 3682.827, 32.930),
				SpawnPoints = {
					{ coords = vector3(1875.183, 3664.396, 34.0692), heading = 114.95, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(1849.201, 3695.871, 111111110038.220),
			vector3(-489.55, 5985.51, 11111111131.42)
		}

	}

}

Config.AuthorizedWeapons = {
	recruit = {	},

	officer = {	},

	sergeant = {
		--{ weapon = 'WEAPON_APPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10000 },
		--{ weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 6000, 1000, 4000, 8000, nil }, price = 50000 },
		--{ weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 70000 },
		--{ weapon = 'WEAPON_NIGHTSTICK', price = 1000 },
			},
	
	sergeant_chief = {	},

	intendent = {	},

	lieutenant = {	},

	chef = {	},

	boss = {	}
}

Config.AuthorizedHelicopters = {
	Shared = {
	},

	recruit = {

	},

	officer = {
	},

	sergeant = {
	},

	lieutenant = {
		{ model = 'sheriffmav', label = 'Sheriff Maverick', price = 200 },
	},

	boss = {
		{ model = 'sheriffmav', label = 'Sheriff Maverick', price = 200 },

	}
}


Config.AuthorizedVehicles = {
	Shared = {
		
	},

	recruit = {

	},

	officer = {
		
	},

	sergeant = {
	
	},

	intendent = {

	},

	lieutenant = {
		
	},

	chef = {
		--{ model = 'valorram', label = 'Sheriff', price = 200 },

	},

	boss = {

	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	recruit_wear = {
		male = {
                    ['tshirt_1'] = 58, ['tshirt_2'] = 0,
                    ['torso_1'] = 26, ['torso_2'] = 2,
                    ['decals_1'] = 0, ['decals_2'] = 0,
                    ['arms'] = 26,
                    ['pants_1'] = 25, ['pants_2'] = 0,
                    ['shoes_1'] = 75, ['shoes_2'] = 0,
                    ['helmet_1'] = 13, ['helmet_2'] = 2,
                    ['chain_1'] = 0, ['chain_2'] = 0,
                    ['ears_1'] = -1, ['ears_2'] = 0
		},
		female = {
                    ['tshirt_1'] = 18, ['tshirt_2'] = 0,
                    ['torso_1'] = 19, ['torso_2'] = 0,
                    ['decals_1'] = 0, ['decals_2'] = 0,
                    ['arms'] = 9,
                    ['pants_1'] = 22, ['pants_2'] = 2,
                    ['shoes_1'] = 25, ['shoes_2'] = 0,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 0, ['chain_2'] = 0,
                    ['ears_1'] = 0, ['ears_2'] = 0
		}
	},
	officer_wear = {
		male = {
			['tshirt_1'] = 58, ['tshirt_2'] = 0,
			['torso_1'] = 26, ['torso_2'] = 2,
			['decals_1'] = 0, ['decals_2'] = 0,
			['arms'] = 26,
			['pants_1'] = 25, ['pants_2'] = 0,
			['shoes_1'] = 75, ['shoes_2'] = 0,
			['helmet_1'] = 13, ['helmet_2'] = 2,
			['chain_1'] = 0, ['chain_2'] = 0,
			['ears_1'] = -1, ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 18, ['tshirt_2'] = 0,
			['torso_1'] = 19, ['torso_2'] = 0,
			['decals_1'] = 0, ['decals_2'] = 0,
			['arms'] = 9,
			['pants_1'] = 22, ['pants_2'] = 2,
			['shoes_1'] = 25, ['shoes_2'] = 0,
			['helmet_1'] = -1, ['helmet_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['ears_1'] = 0, ['ears_2'] = 0
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 58, ['tshirt_2'] = 0,
			['torso_1'] = 26, ['torso_2'] = 2,
			['decals_1'] = 0, ['decals_2'] = 0,
			['arms'] = 26,
			['pants_1'] = 25, ['pants_2'] = 0,
			['shoes_1'] = 75, ['shoes_2'] = 0,
			['helmet_1'] = 13, ['helmet_2'] = 2,
			['chain_1'] = 0, ['chain_2'] = 0,
			['ears_1'] = -1, ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 18, ['tshirt_2'] = 0,
			['torso_1'] = 19, ['torso_2'] = 0,
			['decals_1'] = 0, ['decals_2'] = 0,
			['arms'] = 9,
			['pants_1'] = 22, ['pants_2'] = 2,
			['shoes_1'] = 25, ['shoes_2'] = 0,
			['helmet_1'] = -1, ['helmet_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['ears_1'] = 0, ['ears_2'] = 0
		}
	},
	sergeantchief_wear = {
		male = {
			['tshirt_1'] = 58, ['tshirt_2'] = 0,
			['torso_1'] = 26, ['torso_2'] = 2,
			['decals_1'] = 0, ['decals_2'] = 0,
			['arms'] = 26,
			['pants_1'] = 25, ['pants_2'] = 0,
			['shoes_1'] = 75, ['shoes_2'] = 0,
			['helmet_1'] = 13, ['helmet_2'] = 2,
			['chain_1'] = 0, ['chain_2'] = 0,
			['ears_1'] = -1, ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 18, ['tshirt_2'] = 0,
			['torso_1'] = 19, ['torso_2'] = 0,
			['decals_1'] = 0, ['decals_2'] = 0,
			['arms'] = 9,
			['pants_1'] = 22, ['pants_2'] = 2,
			['shoes_1'] = 25, ['shoes_2'] = 0,
			['helmet_1'] = -1, ['helmet_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['ears_1'] = 0, ['ears_2'] = 0
		}
	},
	intendent_wear = {
		male = {
			['tshirt_1'] = 58, ['tshirt_2'] = 0,
			['torso_1'] = 26, ['torso_2'] = 2,
			['decals_1'] = 0, ['decals_2'] = 0,
			['arms'] = 26,
			['pants_1'] = 25, ['pants_2'] = 0,
			['shoes_1'] = 75, ['shoes_2'] = 0,
			['helmet_1'] = 13, ['helmet_2'] = 2,
			['chain_1'] = 0, ['chain_2'] = 0,
			['ears_1'] = -1, ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 18, ['tshirt_2'] = 0,
			['torso_1'] = 19, ['torso_2'] = 0,
			['decals_1'] = 0, ['decals_2'] = 0,
			['arms'] = 9,
			['pants_1'] = 22, ['pants_2'] = 2,
			['shoes_1'] = 25, ['shoes_2'] = 0,
			['helmet_1'] = -1, ['helmet_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['ears_1'] = 0, ['ears_2'] = 0
		}
	},
	lieutenant_wear = { -- currently the same as intendent_wear
		male = {
			['tshirt_1'] = 58, ['tshirt_2'] = 0,
			['torso_1'] = 26, ['torso_2'] = 2,
			['decals_1'] = 0, ['decals_2'] = 0,
			['arms'] = 26,
			['pants_1'] = 25, ['pants_2'] = 0,
			['shoes_1'] = 75, ['shoes_2'] = 0,
			['helmet_1'] = 13, ['helmet_2'] = 2,
			['chain_1'] = 0, ['chain_2'] = 0,
			['ears_1'] = -1, ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 18, ['tshirt_2'] = 0,
			['torso_1'] = 19, ['torso_2'] = 0,
			['decals_1'] = 0, ['decals_2'] = 0,
			['arms'] = 9,
			['pants_1'] = 22, ['pants_2'] = 2,
			['shoes_1'] = 25, ['shoes_2'] = 0,
			['helmet_1'] = -1, ['helmet_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['ears_1'] = 0, ['ears_2'] = 0
		}
	},
	chef_wear = {
		male = {
			['tshirt_1'] = 58, ['tshirt_2'] = 0,
			['torso_1'] = 26, ['torso_2'] = 2,
			['decals_1'] = 0, ['decals_2'] = 0,
			['arms'] = 26,
			['pants_1'] = 25, ['pants_2'] = 0,
			['shoes_1'] = 75, ['shoes_2'] = 0,
			['helmet_1'] = 13, ['helmet_2'] = 2,
			['chain_1'] = 0, ['chain_2'] = 0,
			['ears_1'] = -1, ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 18, ['tshirt_2'] = 0,
			['torso_1'] = 19, ['torso_2'] = 0,
			['decals_1'] = 0, ['decals_2'] = 0,
			['arms'] = 9,
			['pants_1'] = 22, ['pants_2'] = 2,
			['shoes_1'] = 25, ['shoes_2'] = 0,
			['helmet_1'] = -1, ['helmet_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['ears_1'] = 0, ['ears_2'] = 0
		}
	},
	boss_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 58, ['tshirt_2'] = 0,
			['torso_1'] = 26, ['torso_2'] = 2,
			['decals_1'] = 0, ['decals_2'] = 0,
			['arms'] = 26,
			['pants_1'] = 25, ['pants_2'] = 0,
			['shoes_1'] = 75, ['shoes_2'] = 0,
			['helmet_1'] = 13, ['helmet_2'] = 2,
			['chain_1'] = 0, ['chain_2'] = 0,
			['ears_1'] = -1, ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 18, ['tshirt_2'] = 0,
			['torso_1'] = 19, ['torso_2'] = 0,
			['decals_1'] = 0, ['decals_2'] = 0,
			['arms'] = 9,
			['pants_1'] = 22, ['pants_2'] = 2,
			['shoes_1'] = 25, ['shoes_2'] = 0,
			['helmet_1'] = -1, ['helmet_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['ears_1'] = 0, ['ears_2'] = 0
		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 28,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 29,  ['bproof_2'] = 3
		}
	},
	gilet_wear = {
		male = {
			['bproof_1'] = 51,  ['bproof_2'] = 1
		},
		female = {
			['bproof_1'] = 38,  ['bproof_2'] = 1
		}
	},
	civil_wear = {
		male = {
            ['chain_1'] = 125, ['chain_2'] = 0
		},
		female = {
            ['chain_1'] = 95, ['chain_2'] = 0
		}
	}

}

---TELEPORT SHERIFF


Config.TeleportZones = {
  EnterLocaux = {
    Pos       = { x = -0.0, y = 0.0, z = 10000000000.0 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 0, b = 128 },
    Marker    = 1,
    Blip      = false,
    Name      = "police : entrée",
    Type      = "teleport",
    Hint      = "Appuyez sur ~INPUT_PICKUP~ pour entrer dans les locaux.",
    Teleport  = { x = 0.0, y = 0.0, z = 0.0 }
  },

    ExitLocaux = {
    Pos       = { x = 0.0, y = 0.0, z = 100000000000.0 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 0, b = 128 },
    Marker    = 1,
    Blip      = false,
    Name      = "sheriff : Sortie",
    Type      = "teleport",
    Hint      = "Appuyez sur ~INPUT_PICKUP~ pour sortir des locaux.",
    Teleport  = { x = -0.0, y = 0.0, z = 0.0 },
  },
  
  ExitBuilding = {
    Pos       = { x = -0.0, y = 0.0, z = 100000000000.0 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 0, g = 128, b = 0 },
    Marker    = 1,
    Blip      = false,
    Name      = "sheriff : Sortie",
    Type      = "teleport",
    Hint      = "Appuyez sur ~INPUT_PICKUP~ pour sortir à l'arrière du batiment.",
    Teleport  = { x = -0.0, y = 0.0, z = 0.0 }
  },

    EnterBuilding = {
    Pos       = { x = -0.0, y = 0.0, z = 100000000000.0 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 0, g = 128, b = 0 },
    Marker    = 1,
    Blip      = false,
    Name      = "sheriff : entrée",
    Type      = "teleport",
    Hint      = "Appuyez sur ~INPUT_PICKUP~ pour entrer",
    Teleport  = { x = -0.0, y = 0.0, z = 0.0 },
  },
}