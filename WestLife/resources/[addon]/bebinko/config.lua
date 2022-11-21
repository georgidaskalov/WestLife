Config = {}
Config.cleanBoardButton = 194 -- 
Config.cleanBoardButtonName = "~INPUT_FRONTEND_RRIGHT~"

Config.addYourNameButton = 191 -- Enter
Config.addYourNameButtonName = "~INPUT_FRONTEND_RDOWN~" -- 

Config.changeRuleDartsButton = 157 -- 1
Config.changeRuleDartsButtonName = "~INPUT_SELECT_WEAPON_UNARMED~"

Config.changeRulePointsButton = 158 -- 
Config.changeRulePointsButtonName = "~INPUT_SELECT_WEAPON_MELEE~"

Config.changeRuleDifficultyButton = 160 -- 
Config.changeRuleDifficultyButtonName = "~INPUT_SELECT_WEAPON_SHOTGUN~"

Config.rotateButton = 25 -- 
Config.rotateButtonName = "~INPUT_AIM~"

Config.exitButton = 194
Config.exitButtonName = "~INPUT_FRONTEND_RRIGHT~"

Config.throwButton = 86 -- 
Config.throwButtonName = "~INPUT_VEH_HORN~"

Config.playercancelRaceButton = 194-- Backspace
Config.playercancelRaceButtonName = "~INPUT_FRONTEND_RRIGHT~"-- Backspace

Config.marker = {
	type = 27,
	rgba = {519, 0, 105, 255},
	height = 0.5,
	size = 1.0

}

-- Helptext
Config.helptext = {}
Config.helptext.x = 0.8 -- Changing this is tricky, may cause problems 
Config.helptext.y = 0.75-- Changing this is tricky, may cause problems (x 0.8 y 0.85 bottom right corner)
Config.helptext.color = 5 -- over 200 colors 1 - 225


lang = {
	["clean_board"] = "Изчисти дъската",
	["write_your_name"] = "Въведете име",
	["change_rule_darts"] = " Change rule darts",
	["change_rule_points"] = " Change rule points",
	["change_rule_difficulty"] = " Промени трудността",
	["points"] = "Точки",
	["darts"] = "Дартс",
	["difficulty"] = "Трудност",
	["rules"] = "Правила",
	["throw"] = " Хвърли",
	["rotate"] = " Завърти",
	["exit"] = " Спри",
	

}

-- Spawn dartboards where ever you want 
Config.spawnDartboards = {
	vec4(-445.70, -46.78, 47.0, 85.05), 
	vec4(-444.70, -27.51, 47.0, 83.72),
	vec4(-221.42, -1326.71, 19.36, 90.17),  	--  -221.0351, 14, 20, 87.9307
	
}


