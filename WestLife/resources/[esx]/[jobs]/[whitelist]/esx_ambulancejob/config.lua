Config                            = {}

Config.DrawDistance               = 50.0

Config.Marker                     = { type = 27, x = 1.2, y = 1.2, z = 1.5, r = 255, g = 102, b = 0, a = 100, rotate = true }

Config.ReviveReward               = 300  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = true -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'en'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 5 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 25 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true		-- Тествам управление, беше FALSE

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = false
Config.RemoveItemsAfterRPDeath    = false

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 350

--Config.RespawnPoint = { coords = vector3(278.64, -1332.04, 23.54), heading = 191.45 }
Config.RespawnPoint = { coords = vector3(340.87, -1396.91, 32.51), heading = 56.60 }

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(298.6270, -584.4672, 43.2609),
			sprite = 61,
			scale  = 1.2,
			color  = 2
		},


		AmbulanceActions = {
			vector3(299.11, -598.31, 43.28),		-- jeni
			--vector3(-438.1, -307.59, 33.93),		-- muje
			--vector3(306.26, -597.81, 42.31)
        },

		Pharmacies = {
			--vector3(-453.43, -308.42, 33.93),
			vector3(306.26, -601.48, 43.28)
		},

		Vehicles = {

			{
				Spawner = vector3(0, 0, 100000000),  -- място за викане на МПС
				InsideShop = vector3(-502.4, -317.91, 72.66),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 255, g = 0, b = 0, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(-491.84, -343.59, 34.14), heading = 260.8, radius = 2.0 },
					{ coords = vector3(-493.73, -336.78, 34.14), heading = 353.17, radius = 2.0 },
					{ coords = vector3(-490.24, -329.89, 34.14), heading = 260.8, radius = 2.0 },
				--	{ coords = vector3(289.57, -583.48, 42.98), heading = 340.89, radius = 2.0 },
				--	{ coords = vector3(289.57, -583.48, 42.98), heading = 340.89, radius = 2.0 }
				}
			}


		},

		Helicopters = {
			{
				Spawner = vector3(0, 0, 0),
				InsideShop = vector3(-447.29, -313.04, 77.66),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = false },
				SpawnPoints = {
					{ coords = vector3(-456.6, -291.22, 77.66), heading = 23.33, radius = 10.0 }
				--	{ coords = vector3(299.5, -1453.2, 46.5), heading = 142.7, radius = 10.0 }
				}
			}
		},

		FastTravels = {

			--[[
			-- главен вход в старата болница
			{
				From = vector3(241.07, -1378.87, 32.76),
				To = { coords = vector3(273.53, -1359.45, 23.56), heading = 51.66 },
				Marker = { type = 27, x = 1.0, y = 1.0, z = 1.5, r = 255, g = 0, b = 0, a = 30, rotate = true }
			},

			{
				From = vector3(275.78, -1361.49, 23.56),
				To = { coords = vector3(239.80, -1380.70, 32.76), heading = 147.66 },
				Marker = { type = 27, x = 1.0, y = 1.0, z = 1.5, r = 255, g = 0, b = 0, a = 30, rotate = true }
			},
			]]

			--  ВХОД И ИЗХОД ОТ ЗАТВОРА

	--[[

			{
				From = vector3(1705.08, 2593.01, 44.59),
				To = { coords = vector3(1703.11, 2593.16, 44.59), heading = 198.53 },
				Marker = { type = 27, x = 0.5, y = 0.5, z = 1.5, r = 255, g = 0, b = 0, a = 30, rotate = true }
			},

			{
				From = vector3(1678.73, 2593.99, 44.59),
				To = { coords = vector3(1676.02, 2593.29, 44.61), heading = 175.38 },
				Marker = { type = 27, x = 2.0, y = 2.0, z = 1.5, r = 255, g = 0, b = 0, a = 30, rotate = true }
			},

			]]

			--





	--		{
	--			From = vector3(247.3, -1371.5, 23.5),  -- elevator
	--			To = { coords = vector3(333.1, -1434.9, 45.5), heading = 138.6 },
	--			Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
	--		},

	--		{
	--			From = vector3(335.5, -1432.0, 45.50),
	--			To = { coords = vector3(249.1, -1369.6, 23.5), heading = 0.0 },
	--			Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
	--		},

	--		{
	--			From = vector3(234.53, -1373.74, 21.00),
	--			To = { coords = vector3(249.29, -1358.67, 29.57), heading = 0.0 },
	--			Marker = { type = 27, x = 1.0, y = 1.0, z = 1.5, r = 255, g = 0, b = 0, a = 30, rotate = true }
	--		},

	--		{
	--			From = vector3(247.81, -1361.27, 29.57),
	--			To = { coords = vector3(238.6, -1368.4, 23.5), heading = 294.3 },
	--			Marker = { type = 27, x = 1.0, y = 1.0, z = 1.0, r = 255, g = 0, b = 0, a = 30, rotate = true }
	--		}
		},

		FastTravelsPrompt = {


			{
				From = vector3(-452.39, -288.46, 34.95),
				To = { coords = vector3(-439.42, -335.98, 78.3), heading = 84.75 },
				Marker = { type = 34, x = 1.0, y = 1.0, z = 1.0, r = 255, g = 0, b = 0, a = 100, rotate = true },
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(-439.42, -335.98, 78.3),
				To = { coords = vector3(-452.39, -288.46, 34.95), heading = 113.98 },
				Marker = { type = 34, x = 1.0, y = 1.0, z = 1.0, r = 255, g = 0, b = 0, a = 100, rotate = true },
				Prompt = _U('fast_travel')
			},

	--		{
	--			From = vector3(0000.00, 0000.00, 000.00),
	--			To = { coords = vector3(0000.00, 0000.00, 000.00), heading = 0.0 },
	--			Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
	--			Prompt = _U('fast_travel')
	--		},

	--		{
	--			From = vector3(0000.00, 0000.00, 000.00),
	--			To = { coords = vector3(0000.00, 0000.00, 000.00), heading = 0.0 },
	--			Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
	--			Prompt = _U('fast_travel')
	--		}
		}

	}
}

Config.AuthorizedVehicles = {

	ambulance = {
	},

	doctor = {
	},

	chief_doctor = {
		{ model = 'emsnspeedo', label = 'Линейка', price =1}
	},

	boss = {
		{ model = 'emsnspeedo', label = 'Линейка', price = 1}
	}

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {
	--	{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 1 }
	},

	chief_doctor = {
		{ model = 'polmav', label = 'Хеликоптер', livery = 1, price = 1 }
	},

	boss = {
		{ model = 'polmav', label = 'Хеликоптер', livery = 1, price = 1 }
	}

}
