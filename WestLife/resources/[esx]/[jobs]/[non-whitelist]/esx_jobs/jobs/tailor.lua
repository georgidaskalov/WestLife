Config.Jobs.tailor = {

	BlipInfos = {
		Sprite = 366,
		Color = 4
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'youga2',
			Trailer = 'none',
			HasCaution = true
		}

	},

	Zones = {

		CloakRoom = {
			Pos = {x = 706.73, y = -960.90, z = 30.39},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			Marker = 20,
			Blip = true,
			Name = _U('dd_dress_locker'),
			Type = 'cloakroom',
			Hint = _U('cloak_change'),
			GPS = {x = 740.80, y = -970.06, z = 23.46}
		},

		Wool = {
			Pos = {x = 1978.92, y = 5171.70, z = 47.63},
			Size = {x = 2.0, y = 2.0, z = 2.0},
			Color = {r = 255, g = 255, b = 255},
			Marker = 20,
			Blip = true,
			Name = _U('dd_wool'),
			Type = 'work',
			Item = {
				{
					name = _U('dd_wool'),
					db_name = 'wool',
					time = 1000,
					max = 30,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 50
				}
			},
			Hint = _U('dd_pickup')
		},

		Fabric = {
			Pos = {x = 715.95, y = -959.63, z = 30.39},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 255, g = 255, b = 255},
			Marker = 21,
			Blip = false,
			Name = _U('dd_fabric'),
			Type = 'work',
			Item = {
				{
					name = _U('dd_fabric'),
					db_name = 'fabric',
					time = 2000,
					max = 40,
					add = 2,
					remove = 1,
					requires = 'wool',
					requires_name = _U('dd_wool'),
					drop = 50
				}
			},
			Hint = _U('dd_makefabric')
		},

		Clothe = {
			Pos = {x = 712.92, y = -970.58, z = 30.39},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 255, g = 255, b = 255},
			Marker = 22,
			Blip = false,
			Name = _U('dd_clothing'),
			Type = 'work',
			Item = {
				{
					name = _U('dd_clothing'),
					db_name = 'clothe',
					time = 4000,
					max = 20,
					add = 1,
					remove = 2,
					requires = 'fabric',
					requires_name = _U('dd_fabric'),
					drop = 50
				}
			},
			Hint = _U('dd_makeclothing')
		},

		VehicleSpawner = {
			Pos = {x = 740.80, y = -970.06, z = 24.46},
			Size = {x = 2.0, y = 2.0, z = 2.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 39,
			Blip = false,
			Name = _U('spawn_veh'),
			Type = 'vehspawner',
			Spawner = 1,
			Hint = _U('spawn_veh_button'),
			Caution = 100,
			GPS = {x = 1978.92, y = 5171.70, z = 46.63}
		},

		VehicleSpawnPoint = {
			Pos = {x = 747.31, y = -966.23, z = 23.70},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Name = _U('service_vh'),
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 270.1,
			GPS = 0
		},

		VehicleDeletePoint = {
			Pos = {x = 693.79, y = -963.01, z = 22.82},
			Size = {x = 3.0, y = 3.0, z = 1.0},
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

		Delivery = {
			Pos = {x = 429.59, y = -807.34, z = 29.49},
			Color = {r = 0, g = 255, b = 0},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Marker = 29,
			Blip = true,
			Name = _U('delivery_point'),
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 1000,
					remove = 1,
					max = 20, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 40,
					requires = 'clothe',
					requires_name = _U('dd_clothing'),
					drop = 50
				}
			},
			Hint = _U('dd_deliver_clothes')
		}
	}
}
