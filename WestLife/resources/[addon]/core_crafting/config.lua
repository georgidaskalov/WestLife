Config = {

BlipSprite = 237,
BlipColor = 26,
BlipText = 'Работилница',

UseLimitSystem = false, -- Enable if your esx uses limit system

CraftingStopWithDistance = false, -- Crafting will stop when not near workbench

ExperiancePerCraft = 5, -- The amount of experiance added per craft (100 Experiance is 1 level)

HideWhenCantCraft = false, -- Instead of lowering the opacity it hides the item that is not craftable due to low level or wrong job

Categories = {

['weapons'] = {
	Label = 'ОРЪЖИЯ',
	Image = 'WEAPON_APPISTOL',
	Jobs = {}
},

['misc'] = {
	Label = 'ЧАСТИ',
	Image = 'fishingrod',
	Jobs = {}
},
['misc1'] = {
	Label = 'ЧАСТИ2',
	Image = 'fishingrod',
	Jobs = {}
},

['misc2'] = {
	Label = 'ЧАСТИ3',
	Image = 'fishingrod',
	Jobs = {}
},

['misc3'] = {
	Label = 'ЧАСТИ4',
	Image = 'fishingrod',
	Jobs = {}
},
['misc4'] = {
	Label = 'ЧАСТИ4',
	Image = 'fishingrod',
	Jobs = {}
},

['misc5'] = {
	Label = 'ЧАСТИ4',
	Image = 'fishingrod',
	Jobs = {}
},

['misc6'] = {
	Label = 'ЧАСТИ4',
	Image = 'fishingrod',
	Jobs = {}
},




},

PermanentItems = { -- Items that dont get removed when crafting
	['wrench'] = true
},

Recipes = { -- Enter Item name and then the speed value! The higher the value the more torque

['WEAPON_PISTOL'] = {
	Level = 1, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['grip'] = 1, -- item name and count, adding items that dont exist in database will crash the script
		['trigger'] = 1,
		['spring'] = 1,
		['slide'] = 1
	}
},

['WEAPON_DAGGER'] = {
	Level = 1, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['hilt'] = 1, -- item name and count, adding items that dont exist in database will crash the script
		['blade'] = 1
	}
},

['WEAPON_FLASHLIGHT'] = {
	Level = 1, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['plastic'] = 1, -- item name and count, adding items that dont exist in database will crash the script
		['metal'] = 1
	}
},


['WEAPON_CROWBAR'] = {
	Level = 1, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['iron'] = 12, -- item name and count, adding items that dont exist in database will crash the script
		['metal'] = 1
	}
},

['WEAPON_MICROSMG'] = {
	Level = 2, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['grip'] = 1, -- item name and count, adding items that dont exist in database will crash the script
		['trigger'] = 1,
		['slide'] = 1,
		['spring'] = 1,
		['buttstock'] = 1,
		['slide_stop'] = 1
	}
},

['smg_clip'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint          
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['iron'] = 4, -- item name and count, adding items that dont exist in database will crash the script
		['copper'] = 2
	}
},
     
['armor'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['clothe'] = 1, -- item name and count, adding items that dont exist in database will crash the script
		['iron'] = 2
	}
},

['rifle_clip'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['iron'] = 6, -- item name and count, adding items that dont exist in database will crash the script
		['copper'] = 3
	}
},

['pistol_clip'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['iron'] = 2, -- item name and count, adding items that dont exist in database will crash the script
		['copper'] = 1
	}
},

['grip'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metal'] = 4, -- item name and count, adding items that dont exist in database will crash the script
		['rubber'] = 3,
		['plastic'] = 3
	}
},

['trigger'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metal'] = 3, -- item name and count, adding items that dont exist in database will crash the script
		['plastic'] = 1
	}
},

['spring'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metal'] = 3 -- item name and count, adding items that dont exist in database will crash the script
	}
},

['slide'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metal'] = 8, -- item name and count, adding items that dont exist in database will crash the script
		['spring'] = 1
	}
},

['buttstock'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metal'] = 5, -- item name and count, adding items that dont exist in database will crash the script
		['plastic'] = 5,
		['rubber'] = 5
	}
},

['slide_stop'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metal'] = 3, -- item name and count, adding items that dont exist in database will crash the script
		['plastic'] = 3
	}
},

['hilt'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metal'] = 1, -- item name and count, adding items that dont exist in database will crash the script
		['plastic'] = 1
	}
},

['blade'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metal'] = 2 -- item name and count, adding items that dont exist in database will crash the script
	}
},

['metal'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metal_fragment'] = 8 -- item name and count, adding items that dont exist in database will crash the script
	}
},



['metal_fragment'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['rims'] = 1 -- item name and count, adding items that dont exist in database will crash the script
	}
},

['plastic'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['carradio'] = 2 -- item name and count, adding items that dont exist in database will crash the script
	}
},

['plastic'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['speakers'] = 2 -- item name and count, adding items that dont exist in database will crash the script
	}
},

['weapon_suppressor'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'misc', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['iron'] = 5 -- item name and count, adding items that dont exist in database will crash the script
		
	}
}

},

Workbenches = { -- Every workbench location, leave {} for jobs if you want everybody to access

		{coords = vector3(807.98,-2159.42,29.62), jobs = {'weapons'}, blip = false, recipes = {}, radius = 3.0 }, 
		{coords = vector3(2555.08,4664.87,35.07), jobs = {'coke'}, blip = false, recipes = {}, radius = 3.0 },
},
 

Text = {

    ['not_enough_ingredients'] = 'Нямате нужните материали',
    ['you_cant_hold_item'] = 'Не можеш да носиш този предмет',
    ['item_crafted'] = 'Успешна изработка!',
    ['wrong_job'] = 'Не можеш да използваш тази работилница',
    ['workbench_hologram'] = '[~b~E~w~] РАБОТИЛНИЦА',
    ['wrong_usage'] = 'Неправилно използване',
    ['inv_limit_exceed'] = 'Не можеш да носиш повече! Ипзразни си джобовете',
    ['crafting_failed'] = 'Неуспешна изработка!'

}

}



function SendTextMessage(msg)

        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1)

        --EXAMPLE USED IN VIDEO
        --exports['mythic_notify']:SendAlert('inform', msg)

end