	Config = {}

Config.Locale = 'en'

--Options

Config.EnableMapsBlimps = false -- Enables the blips on the map.
Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.
Config.ChemicalsLicenseEnabled = false --Will Enable or Disable the need for a Chemicals License.
Config.MoneyWashLicenseEnabled = true --Will Enable or Disable the need for a MoneyWash License.
Config.RestrictLicenseShopAcces = false --Will Restrict the access to the license shop to players with a specific job and grade.

--The time it takes to process one item
Config.Delays = {
	WeedProcessing = 500 * 5,
	MethProcessing = 600 * 6,
	CokeProcessing = 700 * 7,
	lsdProcessing = 700 * 7,
	HeroinProcessing = 5 * 5,
	thionylchlorideProcessing = 400 * 4,
}

--Drug Dealer item Prices
Config.DrugDealerItems = {
	heroin = 185,
	marijuana = 200,
	meth = 210,
	coke = 250,
	lsd = 330,
	bagofdope = 600,
}

--License Shop Item Prices
Config.Licenses = {
	moneywash = 51000,
    highgrademaleseed = 100,
    lowgrademaleseed = 100,
    highgradefert = 35,
    lowgradefert = 45,
    purifiedwater = 35,
    wateringcan = 45,
    plantpot = 30,
	drugscales = 10,
	key2 = 5000,
	drugItem = 4000,
	cutter = 5000,
	hackerDevice = 10000,
	id_card_f = 7000,
	thermal_charge = 10000,
	laptop_h = 20000,


}

--Items that are included in the Chemicals Convertion menu
Config.ChemicalsConvertionItems = {
	hydrochloric_acid = 0,
	sodium_hydroxide = 0,
	sulfuric_acid = 0,
	lsa = 0,
}

--Jobs and job grades that are allowed to access the license shop.
--Only needed when RestrictLicenseShopAcces is set to true
Config.AllowedJobs = {
	Cartel4 = {name = 'cartel', grade = 4},
	Cartel3 = {name = 'cartel', grade = 3},
	Police4 = {name = 'police', grade = 4}
}

--Interior Teleport Locations
Config.Interiors = {
	Weed = {EnteranceCoords = vector3(1092.5634, -2251.8093, 31.2335), ExitCoords = vector3(1066.06, -3183.45, -38.16)},
	Meth = {EnteranceCoords = vector3(164.3477, -2215.3264, 13.4809), ExitCoords = vector3(997.22, -3200.43, -35.39)},
	Coke = {EnteranceCoords = vector3(1009.9271, -2869.3931, 11.2601), ExitCoords = vector3(1088.65, -3187.70, -38.00)},
	Moneywash = {EnteranceCoords = vector3(-787.4600, 315.7600, 217.6300), ExitCoords = vector3(-776.95, 319.74, 85.66)},
--	Cartel = {EnteranceCoords = vector3(1400.51, 1127.68, 114.33), ExitCoords = vector3(1400.48, 1129.57, 114.33)},
	DocumentForgeryOffice = {EnteranceCoords = vector3(900.2553, -1272.0936, 34.9760), ExitCoords = vector3(1173.68, -3196.67, -39.00)},
}

Config.LicensePrices = {
--	weed_processing = {label = _U('license_weed'), price = 15000}
}

--Drug Zones
Config.CircleZones = {
	--Weed
	WeedField = {coords = vector3(2215.1802, 5577.6167, 53.8286), blimpcoords = vector3(0, 0, 0), name = _U('blip_weedfield'), color = 25, sprite = 496, radius = 0, enabled = true},
	WeedProcessing = {coords = vector3(1035.86, -3205.20, -38.17), blimpcoords = vector3(-1127.86, 2708.03, 18.8), name = _U('blip_weedprocessing'), color = 25, sprite = 496, radius = 0.0, enabled = true},

	--Meth 1977.1145, 5170.1812, 47.6391, 287.9225
	MethProcessing = {coords = vector3(1011.9479, -3194.9526, -38.9931), blimpcoords = vector3(0, 0, 0), name = _U('blip_methprocessing'), color = 5, sprite = 51, radius = 0.0, enabled = true},
	HydrochloricAcidFarm = {coords = vector3(3724.4612, 3806.5659, 5.9000), blimpcoords = vector3(0, 0, 0), name = _U('blip_HydrochloricAcidFarm'), color = 5, sprite = 51, radius = 0.0, enabled = true},
	SulfuricAcidFarm = {coords = vector3(1977.1145, 5170.1812, 57.6391), blimpcoords = vector3(0, 0, 0), name = _U('blip_SulfuricAcidFarm'), color = 5, sprite = 500, radius = 0.0, enabled = true},
	SodiumHydroxideFarm = {coords = vector3(3929.0332, 4391.1836, 16.6632), blimpcoords = vector3(0, 0, 0), name = _U('blip_SodiumHydroxideFarm'), color = 5, sprite = 51, radius = 0.0, enabled = true},

	--Chemicals
	--ChemicalsField = {coords = vector3(2245.86, -2249.57, 2.48), blimpcoords = vector3(0, 0, 0), name = _U('blip_ChemicalsFarm'), color = 3, sprite = 499, radius = 0.0, enabled = true},
	--ChemicalsConvertionMenu = {coords = vector3(2942.29, 4626.38, 48.72), blimpcoords = vector3(0, 0, 0), name = _U('blip_ChemicalsProcessing'), color = 3, sprite = 499, radius = 0.0, enabled = true},

	--Coke
	CokeField = {coords = vector3(563.2142, 4185.8208, 39.1833), blimpcoords = vector3(0, 0, 0), name = _U('blip_CokeFarm'), color = 4, sprite = 501, radius = 0.0, enabled = true},
	CokeProcessing = {coords = vector3(1093.1737, -3194.8323, -38.9935), blimpcoords = vector3(0, 0, 0), name = _U('blip_Cokeprocessing'),color = 4, sprite = 501, radius = 0.0, enabled = true},

	--LSD
	--lsdProcessing = {coords = vector3(2411.24, 3028.46, 48.15), blimpcoords = vector3(0, 0, 0), name = _U('blip_lsdprocessing'),color = 12, sprite = 364, radius = 0.0, enabled = true},
	--thionylchlorideProcessing = {coords = vector3(2672.82, 3500.87, 53.3), blimpcoords = vector3(0, 0, 0), name = _U('blip_thionylchlorideprocessing'),color = 12, sprite = 364, radius = 0.0, enabled = true},

	--Heroin
	HeroinField = {coords = vector3(16.5265, 6875.9888, 12.6549), blimpcoords = vector3(0, 0, 0), name = _U('blip_heroinfield'), color = 7, sprite = 497, radius = 0.0, enabled = true},
	HeroinProcessing = {coords = vector3(1165.6815, -3196.8638, -39.0080), blimpcoords = vector3(0, 0, 0), name = _U('blip_heroinprocessing'), color = 7, sprite = 497, radius = 0.0, enabled = true},

	--License
	LicenseShop = {coords = vector3(-1937.4684, -3012.4678, 13000000000000000.9443), blimpcoords = vector3(707.17, -962.5, 30.4), name = _U('blip_licenseshop'),color = 9, sprite = 498, radius = 0.0, enabled = true},

	--DrugDealer
	--DrugDealer = {coords = vector3(499.2, -550.6, 24.76), blimpcoords = vector3(-1172.02, -1571.98, 4.66), name = _U('blip_drugdealer'), color = 6, sprite = 378, radius = 0.0, enabled = true},

	--MoneyWash
	MoneyWash = {coords = vector3(1122.2567, -3194.4905, -40.3986), blimpcoords = vector3(48.19, 6305.98, 32.36), name = _U('blip_moneywash'), color = 1, sprite = 500, radius = 0.0, enabled = false},
}
