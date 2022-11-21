Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 159, g = 201, b = 249 }
Config.EnablePlayerManagement     = true -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.EnableOwnedVehicles        = true
Config.EnableSocietyOwnedVehicles = false -- use with EnablePlayerManagement disabled, or else it wont have any effects
Config.ResellPercentage           = 50

Config.Locale                     = 'en'

Config.LicenseEnable = false -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.Zones = {

	ShopEntering = {
		Pos   = vector3(-768.26, -1051.24, 11.99),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 25
	},

	ShopInside = {
		Pos     = vector3(-784.35, -1021.25, 13.06),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 347.09,
		Type    = -1
	},

	ShopOutside = {
		Pos     = vector3(-784.35, -1021.25, 13.06),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 347.09,
		Type    = -1
	},

	BossActions = {
		Pos   = vector3(-798.94, -1016.69, 19.22),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 25
	},

	GiveBackVehicle = {
		Pos   = vector3(-730.88, -1063.85, 11.13),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = (Config.EnablePlayerManagement and 1 or -1)
	},

	ResellVehicle = {
		Pos   = vector3(-44.6, -1080.7, -25.6),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = 1
	}

}
