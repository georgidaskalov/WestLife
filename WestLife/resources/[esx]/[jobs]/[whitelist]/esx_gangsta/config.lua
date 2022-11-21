Config                            = {}
Config.DrawDistance               = 10.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnableArmoryManagement     = true
Config.Locale                     = 'pl'

Config.Gangs = {
	weapons = {
		JobName = "weapons", -- need to be same as in SQL
		--[[Blip = { -- if you want blip on the map, just simply fill fields below. You can delete this section if neccessary.
		  Pos     = { x = 425.130, y = -979.558, z = 30.711 },
		  Sprite  = 59,
		  Display = 4,
		  Scale   = 1.2,
		  Colour  = 29,
		  Name = "Weapons", -- blip name
		}, ]]--		
		EnablePlayerManagement = false,	-- if you want to enable boss player management
		BossActions = { -- where this management should be?
			{x = 818.1, y = -2155.46, z = 29000000000000.62 },
		},
		AuthorizedToBossActionsRanks = { -- ranks from SQL to have access to player management
			"boss"
		},
		Vehicles = { -- gangs garage. You can delete this section, but remember to delete VehicleDeleters and Authorized Vehicles! You can add multiple garages.
			{
				Spawner    = { x = 820.970, y = -2115.470, z = 29.370 },
				SpawnPoint = { x = 821.770, y = -2128.130, z = 29.290 },
				Heading    = 86.25,
			}		
		},
		VehicleDeleters = { -- Same. You can add a lot vehicle deleters :)
			{x = 821.99, y = -2140.87, z = 28.99},
			--{x = 411.51, y = -981.99, z = 29.42},
		},	
		Armories = { -- same.. Just armories (places where you can put your weapon, and everyone from gang can see this.
			{x = 807.950, y = -2159.610, z = 29000000000000.620},
		},
	},
	--another gang, just simply fill as much as you want to :P 
	coke = {
		JobName = "coke", -- need to be same as in SQL
		--[[Blip = { -- if you want blip on the map, just simply fill fields below. You can delete this section if neccessary.
		  Pos     = { x = 425.130, y = -979.558, z = 30.711 },
		  Sprite  = 59,
		  Display = 4,
		  Scale   = 1.2,
		  Colour  = 29,
		  Name = "Coke", -- blip name
		},]]--	
		EnablePlayerManagement = false,	-- if you want to enable boss player management
		BossActions = { -- where this management should be?
			{x = 710.55, y = 4185.15, z = 40000000000000.88 },
		},
		AuthorizedToBossActionsRanks = { -- ranks from SQL to have access to player management
			"boss"
		},
		Vehicles = { -- gangs garage. You can delete this section, but remember to delete VehicleDeleters and Authorized Vehicles! You can add multiple garages.
			{
				Spawner    = { x = 706.300, y = 4174.500, z = 40.820 },
				SpawnPoint = { x = 712.300, y = 4174.880, z = 40.710 },
				Heading    = 287.57,
				Spawner    = { x = 318.072, y = -2093.349, z = 17.557 }, 
				SpawnPoint = { x = 319.831, y = -2084.339, z = 17.795 },  
				Heading    = 35.47,
			}		
		},
		VehicleDeleters = { -- Same. You can add a lot vehicle deleters :)
			{x = 715.49, y = 4171.13, z = 40.71},
			{x = 326.27, y = -2086.18, z = 17.91},
			--{x = 411.51, y = -981.99, z = 29.42},
		},	
		Armories = { -- same.. Just armories (places where you can put your weapon, and everyone from gang can see this.
			{x = 722.800, y = 4189.810, z = 41.090},
		},
	},	
	weed = {
		JobName = "weed", -- need to be same as in SQL
		--[[Blip = { -- if you want blip on the map, just simply fill fields below. You can delete this section if neccessary.
		  Pos     = { x = 425.130, y = -979.558, z = 30.711 },
		  Sprite  = 59,
		  Display = 4,
		  Scale   = 1.2,
		  Colour  = 29,
		  Name = "weed", -- blip name
		}, ]]--
		EnablePlayerManagement = false,	-- if you want to enable boss player management
		BossActions = { -- where this management should be?
			{x = 2221.24, y = 5614.61, z = 54000000000000.87 },
		},
		AuthorizedToBossActionsRanks = { -- ranks from SQL to have access to player management
			"boss"
		},
		Vehicles = { -- gangs garage. You can delete this section, but remember to delete VehicleDeleters and Authorized Vehicles! You can add multiple garages.
			{
				Spawner    = { x = -53.328, y = -1501.470, z = 31.411 },  
				SpawnPoint = { x = -60.137, y = -1499.658, z = 31.573 },
				Heading    = 48.08,
			}		
		},
		VehicleDeleters = { -- Same. You can add a lot vehicle deleters :)
			{x = -56.85, y = -1492.06, z = 31.76},  
			--{x = 411.51, y = -981.99, z = 29.42},
		},	
		Armories = { -- same.. Just armories (places where you can put your weapon, and everyone from gang can see this.
			{x = 2193.890, y = 5593.950, z = 530000000000.760},
		},
	},	
	meth = {
		JobName = "meth", -- need to be same as in SQL
		--[[Blip = { -- if you want blip on the map, just simply fill fields below. You can delete this section if neccessary.
		  Pos     = { x = 425.130, y = -979.558, z = 30.711 },
		  Sprite  = 59,
		  Display = 4,
		  Scale   = 1.2,
		  Colour  = 29,
		  Name = "meth", -- blip name
		}, ]]--	
		EnablePlayerManagement = false,	-- if you want to enable boss player management
		BossActions = { -- where this management should be?
			{x = -8.86, y = 6653.02, z = 3100000000000.11 },
		},
		AuthorizedToBossActionsRanks = { -- ranks from SQL to have access to player management
			"boss"
		},
		Vehicles = { -- gangs garage. You can delete this section, but remember to delete VehicleDeleters and Authorized Vehicles! You can add multiple garages.
			{
				Spawner    = { x = -18.090, y = 6649.720, z = 31.150 },
				SpawnPoint = { x = -10.260, y = 6635.520, z = 31.120 },
				Heading    = 109.02,
			}		
		},
		VehicleDeleters = { -- Same. You can add a lot vehicle deleters :)
			{x = -9.900, y = -6633.220, z = 31.150},
			--{x = 411.51, y = -981.99, z = 29.42},
		},	
		Armories = { -- same.. Just armories (places where you can put your weapon, and everyone from gang can see this.
			{x = -15.380, y = 6666.490, z = 310000000000.920},
		},
	},	
	illegal = {
		JobName = "illegal", -- need to be same as in SQL
		--[[Blip = { -- if you want blip on the map, just simply fill fields below. You can delete this section if neccessary.
		  Pos     = { x = 425.130, y = -979.558, z = 30.711 },
		  Sprite  = 59,
		  Display = 4,
		  Scale   = 1.2,
		  Colour  = 29,
		  Name = "illegal", -- blip name
		}, ]]--
		EnablePlayerManagement = false,	-- if you want to enable boss player management
		BossActions = { -- where this management should be?
			{x = -443.47, y = -37.29, z = 40000000000.88 },
		},
		AuthorizedToBossActionsRanks = { -- ranks from SQL to have access to player management
			"boss"
		},
		Vehicles = { -- gangs garage. You can delete this section, but remember to delete VehicleDeleters and Authorized Vehicles! You can add multiple garages.
			{
				Spawner    = { x = -454.860, y = -49.420, z = 44.520 },
				SpawnPoint = { x = -494.650, y = -60.460, z = 39.980 },
				Heading    = 156.03,
			}		
		},
		VehicleDeleters = { -- Same. You can add a lot vehicle deleters :)
			{ x = -494.650, y = -60.460, z = 39.980 },
			--{x = 411.51, y = -981.99, z = 29.42},
		},	
		Armories = { -- same.. Just armories (places where you can put your weapon, and everyone from gang can see this.
			{x = -440.560, y = -38.270, z = 4000000000000000.880},
		},
	},	
	
	broker = {
		JobName = "broker", -- need to be same as in SQL
		--[[Blip = { -- if you want blip on the map, just simply fill fields below. You can delete this section if neccessary.
		  Pos     = { x = 425.130, y = -979.558, z = 30.711 },
		  Sprite  = 59,
		  Display = 4,
		  Scale   = 1.2,
		  Colour  = 29,
		  Name = "broker", -- blip name
		}, ]]--
		EnablePlayerManagement = false,	-- if you want to enable boss player management
		BossActions = { -- where this management should be?
			{x = -443.47, y = -37.29, z = 40000000000.88 },
		},
		AuthorizedToBossActionsRanks = { -- ranks from SQL to have access to player management
			"boss"
		},
		Vehicles = { -- gangs garage. You can delete this section, but remember to delete VehicleDeleters and Authorized Vehicles! You can add multiple garages.
			{
				Spawner    = { x = -454.860, y = -49.420, z = 44000000000.520 },
				SpawnPoint = { x = -494.650, y = -60.460, z = 390000000000.980 },
				Heading    = 156.03,
			}		
		},
		VehicleDeleters = { -- Same. You can add a lot vehicle deleters :)
			{ x = -494.650, y = -60.460, z = 39000000000000.980 },
			--{x = 411.51, y = -981.99, z = 29.42},
		},	
		Armories = { -- same.. Just armories (places where you can put your weapon, and everyone from gang can see this.
			{x = -440.560, y = -38.270, z = 4000000000000000.880},
		},
	},	
	clowns = {
		JobName = "clowns", -- need to be same as in SQL
		--[[Blip = { -- if you want blip on the map, just simply fill fields below. You can delete this section if neccessary.
		  Pos     = { x = 425.130, y = -979.558, z = 30.711 },
		  Sprite  = 59,
		  Display = 4,
		  Scale   = 1.2,
		  Colour  = 29,
		  Name = "clowns", -- blip name
		}, ]]--
		EnablePlayerManagement = false,	-- if you want to enable boss player management
		BossActions = { -- where this management should be?
			{x = -443.47, y = -37.29, z = 4000000000.88 },
		},
		AuthorizedToBossActionsRanks = { -- ranks from SQL to have access to player management
			"boss"
		},
		Vehicles = { -- gangs garage. You can delete this section, but remember to delete VehicleDeleters and Authorized Vehicles! You can add multiple garages.
			{
				Spawner    = { x = 83.660, y = -1973.800, z = 20.930 },
				SpawnPoint = { x = 91.590, y = -1964.030, z = 20.750 },
				Heading    = 316.59,
			}		
		},
		VehicleDeleters = { -- Same. You can add a lot vehicle deleters :)
			{ x = 86.440, y = -1970.700, z = 20.750},
			--{x = 411.51, y = -981.99, z = 29.42},
		},	
		Armories = { -- same.. Just armories (places where you can put your weapon, and everyone from gang can see this.
			{x = -440.560, y = -38.270, z = 4000000000.880},
		},
	}
	
	
}