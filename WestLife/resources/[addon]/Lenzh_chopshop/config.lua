Config = {}

Config.Locale = 'en'
Config.DrawDistance = 100.0 -- Change the distance before you can see the marker. Less is better performance.
Config.EnableBlips = false -- Set to false to disable blips.
Config.MarkerType = 27
Config.MarkerColor = { r = 255, g = 0, b = 0 } -- Change the marker color.

-- Set the time (in minutes) during the player is markered
Config.Timer = 2

Config.CooldownMinutes = 7

Config.CallCops = false -- Set to true if you want cops to be alerted when chopping is in progress
Config.CallCopsPercent = 1 -- (min1) if 1 then cops will be called every time=100%, 2=50%, 3=33%, 4=25%, 5=20%.
Config.CopsRequired = 1
Config.ShowCopsMisbehave = true --show notification when cops steal too

Config.NPCEnable = true -- Set to false to disable NPC Ped at shop location.
Config.NPCHash = 68070371 --Hash of the npc ped. Change only if you know what you are doing.
Config.NPCShop = { x = 266.90, y = 2584.10, z = 43.92, h = 94.26 } -- Location of the shop For the npc.

Config.RemovePart = 1000

Config.GiveBlack = true --- Give dirty cash
Config.AnyoneCanChop = false -- Pesonal Cars chop ### CAUTION WILL DELETE VEHICLES FROM DATABASE

Config.Zones = {
  Chopshop = {coords = vector3(258.84, 2578.34, 44.14 + 0.99), name = _U('map_blip'), color = 49, sprite = 225, radius = 100.0, Pos = { x = 258.84, y = 2578.34, z = 44.14 - 0.95 }, Size = { x = 5.0, y = 5.0, z = 0.5 }, },
  StanleyShop = {coords = vector3(266.90, 2584.10, 43.42), name = _U('map_blip_shop'), color = 50, sprite = 120, radius = 25.0, Pos = { x = 266.90, y = 2584.10, z = 43.42}, Size = { x = 3.0, y = 3.0, z = 1.0 }, },

}

Config.Items = {
  -- Item and Price $
  "carbattery",
  "muffler",
  "hood",
  "trunk",
  "doors",
  "engine",
  "waterpump",
  "oilpump",
  "speakers",
  "carradio",
  "rims",
  "metal",
  "plastic",
  "steeringwheel"
}


Config.ItemsPrices = {
  -- Item and Price $
  carbattery = 50,
  muffler = 90,
  hood = 100,
  trunk = 105,
  doors = 105,
  engine = 200,
  waterpump = 100,
  oilpump = 100,
  speakers = 70,
  carradio = 65,
  rims = 100,
  metal = 30,
  plastic = 15,
  steeringwheel = 75
}
-- Jobs in this table are considered as cops
Config.WhitelistedCops = {
  'police' ,
  'sheriff'
}
