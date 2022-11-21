Config                 = {}
Config.DrawDistance    = 10.0
Config.MaxErrors       = 5
Config.SpeedMultiplier = 3.6
Config.Locale = 'en'

Config.Prices = {
	dmv         = 200,
	drive       = 500,
	drive_bike  = 200,
	drive_truck = 600
}

Config.VehicleModels = {
	drive       = 'ingot',
--	drive       = 'airtug',
	drive_bike  = 'vader',
	drive_truck = 'mule2'
}

Config.SpeedLimits = {
	residence = 120,
	town      = 120,
	freeway   = 180
}

Config.Zones = {

	DMVSchool = {
		Pos   = {x = -914.46, y = -2039.02, z = 9.2},
		Size  = {x = 1.5, y = 1.5, z = 1.5},
		Color = {r = 242, g = 108, b = 79},
		Type  = 36, Rotate = true
	},

	VehicleSpawnPoint = {
		Pos   = {x = -986.17, y = -2054.98, z = 9.41, h = 220.27},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 252, g = 84, b = 12},
		Type  = -1, Rotate = false
	}

}

Config.CheckPoints = {


	{
		Pos = {x = -998.89, y = -2100.32, z = 11.85},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('residence')

			Citizen.CreateThread(function()
				DrawMissionText(_U('stop_look_left', Config.SpeedLimits['residence']), 5000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(6000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('good_turn_right'), 5000)
			end)
		end
	},


	{
		Pos = {x = -1015.09, y = -2094.58, z = 13.46},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('next_point_speed', Config.SpeedLimits['residence']), 5000)
		end
	},



	{
		Pos = {x = -859.32, y = -1722.21, z = 19.03},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},
	
	

	{
		Pos = {x = -674.10, y = -1477.02, z = 10.51},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			Citizen.CreateThread(function()
				DrawMissionText(_U('stop_for_ped'), 5000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(4000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('good_turn_right'), 5000)
			end)
		end
	},



	{
		Pos = {x = -767.07, y = -1691.91, z = 29.20},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('watch_traffic_lightson'), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
		end
	},



	{
		Pos = {x = -762.58, y = -1745.12, z = 29.30},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('stop_for_passing'), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
			FreezeEntityPosition(vehicle, true)
			Citizen.Wait(6000)
			FreezeEntityPosition(vehicle, false)
		end
	},

	{
		Pos = {x = -611.89, y = -1735.04, z = 37.47},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('freeway')

			DrawMissionText(_U('hway_time', Config.SpeedLimits['freeway']), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
		end
	},



	{
		Pos = {x = -515.70, y = -1686.86, z = 37.19},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -410.46, y = -1549.27, z = 37.98},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -393.11, y = -1340.40, z = 37.27},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -385.97, y = -720.43, z = 37.22},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},


	{
		Pos = {x = -151.13, y = -535.11, z = 28.87},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_prepare_point'), 5000)
		end
	},



	{
		Pos = {x = 81.15, y = -543.47, z = 33.80},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town')
			DrawMissionText(_U('in_town_speed', Config.SpeedLimits['town']), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
		end
	},


	{
		Pos = {x = 250.22, y = -549.48, z = 43.12},
		Action = function(playerPed, vehicle, setCurrentZoneType)
				DrawMissionText(_U('good_turn_right'), 5000)
		end
	},



	{
		Pos = {x = 175.99, y = -791.35, z = 31.45},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('gratz_stay_alert'), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
		end
	},
	
	
	
	{
		Pos = {x = 109.76, y = -973.06, z = 29.40},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},
	
	{
		Pos = {x = 123.45, y = -1393.08, z = 29.27},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},
	

	{
		Pos = {x = -126.62, y = -1712.31, z = 29.85},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},


	{
		Pos = {x = -476.70, y = -1881.89, z = 17.87},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},


	{
		Pos = {x = -817.10, y = -2234.18, z = 17.31},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},


	{
		Pos = {x = -835.96, y = -2571.40, z = 13.81},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},


	{
		Pos = {x = -798.31, y = -2525.96, z = 13.79},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},
	
	
	{
		Pos = {x = -724.73, y = -2400.95, z = 14.72},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('good_turn_left'), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
		end
	},	


	{
		Pos = {x = -997.61, y = -2111.69, z = 11.64},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('almost_there', Config.SpeedLimits['residence']), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
		end
	},	

	

	{
		Pos = {x = -967.47, y = -2069.95, z = 9.41},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			ESX.Game.DeleteVehicle(vehicle)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
		end
	}

}


--[[


	{
		Pos = {x = -493.8, y = -602.35, z = 30.17},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('next_point_speed', Config.SpeedLimits['residence']), 5000)
		end
	},

	{
		Pos = {x = -485.05, y = -620.62, z = 30.17},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -565.28, y = -620.75, z = 29.3},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			Citizen.CreateThread(function()
				DrawMissionText(_U('stop_for_ped'), 5000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(4000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('good_lets_cont'), 5000)
			end)
		end
	},

	{
		Pos = {x = -600.91, y = -587.89, z = 24.31},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town')

			Citizen.CreateThread(function()
				DrawMissionText(_U('stop_look_left', Config.SpeedLimits['town']), 5000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(6000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('good_turn_right'), 5000)
			end)
		end
	},

	{
		Pos = {x = -447.87, y = -638.21, z = 30.58},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('watch_traffic_lightson'), 5000)
		end
	},

	{
		Pos = {x = 381.7, y = -864.78, z = 28.29},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 397.01, y = -977.78, z = 28.32},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('stop_for_passing'), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
			FreezeEntityPosition(vehicle, true)
			Citizen.Wait(6000)
			FreezeEntityPosition(vehicle, false)
		end
	},

	{
		Pos = {x = 395.51, y = -1112.86, z = 28.39},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 86.15, y = -1136.38, z = 28.17},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -41.12, y = -1172.67, z = 35.21},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('freeway')

			DrawMissionText(_U('hway_time', Config.SpeedLimits['freeway']), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
		end
	},

	{
		Pos = {x = -364.88, y = -1146.93, z = 36.27},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -393.24, y = -663.83, z = 36.18},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -424.05, y = -486.1, z = 32.44},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -612.98, y = -475.52, z = 33.73},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town')
			DrawMissionText(_U('in_town_speed', Config.SpeedLimits['town']), 5000)
		end
	},

	{
		Pos = {x = -640.21, y = -636.02, z = 30.98},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('gratz_stay_alert'), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
		end
	},
	
	
	
	{
		Pos = {x = -442.8, y = -637.96, z = 30.29},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},
	
		{
		Pos = {x = -495.45, y = -591.47, z = 24.31},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},
	
	

	{
		Pos = {x = -495.18, y = -624.18, z = 24.31},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			ESX.Game.DeleteVehicle(vehicle)
		end
	}

}
]]