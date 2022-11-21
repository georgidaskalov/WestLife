Config.Jobs.miner = {

	BlipInfos = {
		Sprite = 318,
		Color = 5
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'rubble',
			Trailer = 'none',
			HasCaution = true
		}

	},

	Zones = {

		CloakRoom = {
			Pos = {x = 892.35, y = -2172.77, z = 32.28},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			Marker = 20,
			Blip = true,
			Name = _U('m_miner_locker'),
			Type = 'cloakroom',
			Hint = _U('cloak_change'),
			GPS = {x = 884.86, y = -2176.51, z = 29.51}
		},

		Mine = {
			Pos = {x = 2962.40, y = 2746.20, z = 42.39},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 1,
			Blip = true,
			Name = _U('m_rock'),
			Type = 'work',
			Item = {
				{
					name = _U('m_rock'),
					db_name = 'stone',
					time = 500,
					max = 20,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10
				}
			},
			Hint = _U('m_pickrocks'),
			GPS = {x = 289.24, y = 2862.90, z = 42.64}
		},

		StoneWash = {
			Pos = {x = 289.24, y = 2862.90, z = 42.64},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 1,
			Blip = true,
			Name = _U('m_washrock'),
			Type = 'work',
			Item = {
				{
					name = _U('m_washrock'),
					db_name = 'washed_stone',
					time = 2000,
					max = 20,
					add = 1,
					remove = 1,
					requires = 'stone',
					requires_name = _U('m_rock'),
					drop = 80
				}
			},
			Hint = _U('m_rock_button'),
			GPS = {x = 1109.14, y = -2007.87, z = 30.01}
		},

		Foundry = {
			Pos = {x = 1109.14, y = -2007.87, z = 31.01},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 21,
			Blip = true,
			Name = _U('m_rock_smelting'),
			Type = 'work',
			Item = {
				{
					name = _U('m_copper'),
					db_name = 'copper',
					time = 3000,
					max = 20,
					add = 4,
					remove = 1,
					requires = 'washed_stone',
					requires_name = _U('m_washrock'),
					drop = 17
				},
				{
					name = _U('m_iron'),
					db_name = 'iron',
					max = 12,
					add = 6,
					drop = 11
				},
				{
					name = _U('m_gold'),
					db_name = 'gold',
					max = 10,
					add = 2,
					drop = 7
				},
				{
					name = _U('m_diamond'),
					db_name = 'diamond',
					max = 10,
					add = 1,
					drop = 1
				}
			},
			Hint = _U('m_melt_button'),
			GPS = {x = -169.48, y = -2659.16, z = 5.00}
		},

		VehicleSpawner = {
			Pos = {x = 884.86, y = -2176.51, z = 30.51},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 39,
			Blip = false,
			Name = _U('spawn_veh'),
			Type = 'vehspawner',
			Spawner = 1,
			Hint = _U('spawn_veh_button'),
			Caution = 100,
			GPS = {x = 2962.40, y = 2746.20, z = 42.39}
		},

		VehicleSpawnPoint = {
			Pos = {x = 879.55, y = -2189.79, z = 29.51},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Name = _U('service_vh'),
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 90.1,
			GPS = 0
		},

		VehicleDeletePoint = {
			Pos = {x = 881.93, y = -2198.01, z = 29.51},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			Marker = 1,
			Blip = false,
			Name = _U('return_vh'),
			Type = 'vehdelete',
			Hint = _U('return_vh_button'),
			Spawner = 1,
			Caution = 100,
			GPS = 0,
			Teleport = 0
		},

		CopperDelivery = {
			Pos = {x = -169.481, y = -2659.16, z = 6.00103},
			Color = {r = 184, g = 115, b = 51},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Marker = 29,
			Blip = true,
			Name = _U('m_sell_copper'),
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 1000,
					remove = 1,
					max = 40, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 30,
					requires = 'copper',
					requires_name = _U('m_copper'),
					drop = 50
				}
			},
			Hint = _U('m_deliver_copper'),
			GPS = {x = -148.78, y = -1040.38, z = 26.27}
		},

		IronDelivery = {
			Pos = {x = -148.78, y = -1040.38, z = 27.27},
			Color = {r = 229, g = 228, b = 226},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Marker = 29,
			Blip = true,
			Name = _U('m_sell_iron'),
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 1000,
					remove = 1,
					max = 24, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 35,
					requires = 'iron',
					requires_name = _U('m_iron'),
					drop = 50
				}
			},
			Hint = _U('m_deliver_iron'),
			GPS = {x = 261.48, y = 207.35, z = 109.28}
		},

		GoldDelivery = {
			Pos = {x = 335.47, y = -874.82, z = 29.29},
			Color = {r = 255, g = 215, b = 0},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Marker = 29,
			Blip = true,
			Name = _U('m_sell_gold'),
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 1000,
					remove = 1,
					max = 15, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 75,
					requires = 'gold',
					requires_name = _U('m_gold'),
					drop = 50
				}
			},
			Hint = _U('m_deliver_gold'),
			GPS = {x = -621.04, y = -228.53, z = 37.05}
		},

		DiamondDelivery = {
			Pos = {x = -621.04, y = -228.53, z = 38.05},
			Color = {r = 78, g = 226, b = 236},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Marker = 29,
			Blip = true,
			Name = _U('m_sell_diamond'),
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 1000,
					remove = 1,
					max = 15, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 150,
					requires = 'diamond',
					requires_name = _U('m_diamond'),
					drop = 50
				}
			},
			Hint = _U('m_deliver_diamond'),
			GPS = {x = 2962.40, y = 2746.20, z = 42.39}
		}

	}
}
