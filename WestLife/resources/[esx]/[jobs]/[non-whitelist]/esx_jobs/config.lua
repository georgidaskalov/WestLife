Config              = {}
Config.DrawDistance = 1000.0
Config.Locale       = 'en'

Config.Plates = {
  taxi = "TAXI",
  fisherman = "FISH",
  police = "LSPD",
  ambulance = "EMS",
  mecano = "MECH",
  fueler = "FUEL",
  lumberjack = "BUCH",
  miner = "MINE",
  reporter = "JOUR",
  slaughterer = "ABAT",
  tailor = "COUT"
}

Config.Jobs = {}

Config.PublicZones = {
  EnterBuilding = {
    Pos   = { x = -118.21381378174, y = -607.14227294922, z = 35.280723571777 },
    Size  = {x = 2.0, y = 2.0, z = 0.2},
    Color = {r = 204, g = 204, b = 0},
    Marker= 1,
    Blip  = false,
    Name  = "San Andreas Times",
    Type  = "teleport",
    Hint  = "Press ~INPUT_PICKUP~ to enter the building.",
    Teleport = { x = -139.09838867188, y = -620.74865722656, z = 167.82052612305 }
  },

  ExitBuilding = {
    Pos   = { x = -139.09838867188, y = -620.74865722656, z = 167.82052612305  },
    Size  = {x = 2.0, y = 2.0, z = 0.2},
    Color = {r = 204, g = 204, b = 0},
    Marker= 1,
    Blip  = false,
    Name  = "San Andreas Times",
    Type  = "teleport",
    Hint  = "Press ~INPUT_PICKUP~ to go to the entrance of the building.",
    Teleport = { x = -118.233, y = -607.122, z = 35.280 },
  },
  Enterhouse = {
    Pos   = { x = -140.259, y = -617.518, z = 167.82 },
    Size  = {x = 2.0, y = 2.0, z = 0.2},
    Color = {r = 204, g = 204, b = 0},
    Marker= 1,
    Blip  = false,
    Name  = "San Andreas Times",
    Type  = "teleport",
    Hint  = "Press ~INPUT_PICKUP~ to enter the building.",
    Teleport = { x = -142.930, y = -573.220, z = 31.424 }
  },

  Exithouse = {
    Pos   = { x = -142.930, y = -573.220, z = 31.424  },
    Size  = {x = 2.0, y = 2.0, z = 0.2},
    Color = {r = 204, g = 204, b = 0},
    Marker= 1,
    Blip  = false,
    Name  = "San Andreas Times",
    Type  = "teleport",
    Hint  = "Press ~INPUT_PICKUP~ to go to the entrance of the building.",
    Teleport = { x = -140.259, y = -617.518, z = 167.82 },
  },
}
