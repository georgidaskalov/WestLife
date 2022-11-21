Config = {}
Config.Locale = "en"
Config.IncludeCash = true -- Include cash in inventory?
Config.IncludeWeapons = true -- Include weapons in inventory?
Config.IncludeAccounts = true -- Include accounts (bank, black money, ...)?
Config.ExcludeAccountsList = {"bank"} -- List of accounts names to exclude from inventory
Config.OpenControl = 289 -- Key for opening inventory. Edit html/js/config.js to change key for closing it.

-- List of item names that will close ui when used
Config.CloseUiItems = {
    
    "advancedlockpick",
    'armor',
    "bandage",
    "bandage2",
    "beer",
    "binoculars",
    "blowpipe",
    "carokit",
    "carotool",
    "clip",
    "coffee",
    "coke",
    "fishbait",
    "fishingrod",
    "fixkit",
    "fixtool",
    "fountain",
    "gazbottle",
    "handcuffs",
    "lockpick",
    "lsd",
    "marijuana",
    "medikit",
    "monster",
    "oxygen_mask",
    "rope",
    "shotburst",
    "spice",
    "starburst",
    "trailburst",
    "tuning_laptop",
    "turtlebait",
    "vodka",
    "disc_ammo_pistol",
	"notepad",
    "neoncontroller",
    "toolbox",
    "mechanic_tools"

}

Config.ShopBlipID = 52
Config.LiquorBlipID = 93
Config.YouToolBlipID = 402
Config.PrisonShopBlipID = 140
Config.WeedStoreBlipID = 140
Config.WeaponShopBlipID = 110

Config.ShopLength = 14
Config.LiquorLength = 10
Config.YouToolLength = 2
Config.PrisonShopLength = 2

Config.Color = 2
Config.WeaponColor = 1

Config.WeaponLiscence = {x = 12.47, y = -1105.5, z = 29.8000000000000000}
Config.LicensePrice = 1200

Config.Shops = {
    RegularShop = {
        Locations = {
          
        },
        Items = {
            {name = 'bread'},
            {name = 'water'},
            {name = 'cupcake'},
            {name = 'pistachio'},
            {name = 'chocolate'},
            {name = 'drpepper'},
            {name = 'lemonade'},
            {name = 'icetea'},
			{name = 'coffee'},
            {name = 'donut'},
            {name = 'sandwich'},
			{name = 'dogfood'},
			{name = 'pizza'},
			{name = 'spaghetti'},
			{name = 'orngjuice'},
			{name = 'banana'},
			{name = 'dragonfruit'},
			{name = 'pineapple'},
            {name = 'energy'},
			{name = 'derbyapple'},
			{name = 'bolchips'},
            {name = 'orange'},
			{name = 'steak'}
        }
    },

    RobsLiquor = {
		Locations = {
		
        },
        Items = {
            {name = 'beer'},
            {name = 'wine'},
            {name = 'vodka'},
            {name = 'tequila'},
            {name = 'whisky'},
            {name = 'grand_cru'}
        }
	},


    YouTool = {
        Locations = {
           
        },
        Items = {
            {name = 'phone'},
            {name = 'radio'}
            
        }
    },

    PrisonShop = {
        Locations = {
            
        },
        Items = {
            {name = 'drugbags'},
            {name = 'rolpaper'}
        }
    },

	Vendo = {
        Locations = {
        
        },
        Items = {
            {name = 'drugItem'},
            {name = 'sim'},
            {name = 'hqscale'},
            {name = 'hackerDevice'},
        }
    },

    WeaponShop = {
        Locations = {
           --[[ { x = -662.180, y = -934.961, z = 20.829 },
            { x = 810.25, y = -2157.60, z = 28.62 },
            { x = 1693.44, y = 3760.16, z = 33.71 },
            { x = -330.24, y = 6083.88, z = 30.45 },
            { x = 252.63, y = -50.00, z = 68.94 },
            { x = 22.09, y = -1107.28, z = 28.80 },
            { x = 2567.69, y = 294.38, z = 107.73 },
            { x = -1117.58, y = 2698.61, z = 17.55 },
            { x = 486.61, y = -995.74, z = 29.6 },]]--
        },
        Weapons = {
            {name = "WEAPON_FLASHLIGHT", ammo = 1},
            --{name = "WEAPON_KNIFE", ammo = 1},
            {name = "WEAPON_BALL", ammo = 1},
            {name = "WEAPON_FIREEXTINGUISHER", ammo = 100},
        },
        Ammo = {
            {name = "9mm_rounds", weaponhash = "WEAPON_PISTOL", ammo = 24},
            {name = "shotgun_shells", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 12}
        },
        Items = {
            {name = 'weabox'},
            {name = 'armour'}
        }
    },
}