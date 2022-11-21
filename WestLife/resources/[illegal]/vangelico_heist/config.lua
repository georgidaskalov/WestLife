Config = {}
Config.AirVent = {-635.94, -213.95, 53.54} -- First step
Config.AirVentDist = 15 -- Distance to show the ['air_vent'] text
Config.GasTime = 3 -- Time before removing the gas, in minutes
Config.RobTime = 8 -- How many minutes the thief has to rob the jewels before the robbery gets cancelled
Config.MinPolice = 3 -- Min amount of Cops online to trigger the robbery
Config.PoliceJobName = 'police'
Config.SheriffJobName = 'sheriff'
Config.RewardMoney = false -- Give money?
Config.Account = 'black_money'
Config.Money = 100 -- Money per stand
Config.RewardItem = true -- Reward item?
Config.Cooldown = 90 -- 1 hour and 30 min
Config.WeaponsWL = true -- Needs specific weapon to smash the glass?
Config.Weapons = { -- If player is using one of this weapons it will be able to smash the stands
	-2067956739 -- crowbar
}



Config.Items = {
	{item = 'jewels', amount = 1}
}
Config.Lang = {
	['blip'] = 'Бижутерия',
	['air_vent'] = ' сложиш бомбата и активирай райски газ',
	['plant_gas'] = 'Натисни ~b~[E]~g~ за да сложиш бомбата',
	['started'] = 'Обир на Бижутерия е стартиран',
	['police'] = 'Задействана е алармата на бижутреия',
	['sheriff'] = 'Задействана е алармата на бижутреия',
	['break'] = 'Натисни ~b~[E]~g~ за да счупиш стъклото',
	['needs_weapon'] = 'Трябва ти оръжие за да счупиш стъклото',
	['stole'] = 'Ти открадна ',
	['cooldown'] = 'Бижутерията беше обрана на скоро , опитай по късно',
	
}
