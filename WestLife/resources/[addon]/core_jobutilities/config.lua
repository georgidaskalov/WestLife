Config = {

--BLIPS FOR JOB CENTERS
BlipCenterSprite = 498,
BlipCenterColor = 3,
BlipCenterText = 'Трудова борса',

MarkerSprite = 27,
MarkerColor = {66, 135, 245},
MarkerSize = 1.1,

LocationsJobCenters = { -- If you want you can setup locations to change jobs (Leave without entiries if you dont want locations) (ADDS 0.02 MS)
	{coords = vector3(-365.4309, -248.339, 36.080), blip = true}  
},

--Boss menu locations
BossMenuLocations = {

	{coords = vector3(362.0706, -1584.8407, 33.3564), job = "police", label = "Полиция"},
	--{coords = vector3(463.2575, -985.4942, 30.7281), job = "police", label = "Полиция"},
	{coords = vector3(-489.55, 5985.51, 31.42), job = "sheriff", label = "Шерифство"},
	{coords = vector3(-1608.1903, -842.7327, 10.0995), job = "taxi", label = "Такси"},
    	{coords = vector3(334.3503, -593.1286, 43.2840), job = "ambulance", label = "Болница"}, 
	{coords = vector3(1156.7405, -779.6756, 57.6051), job = "mechanic", label = "Механик"},
	--{coords = vector3(542.6110, -195.5558, 54.4932), job = "mecano", label = "Механик"},
	{coords = vector3(-200.9720, -1342.2990, 34.8994), job = "mecano", label = "Механик"},
	{coords = vector3(-799.3601, -1019.0068, 20.1836), job = "cardealer", label = "Cardealer"},
	{coords = vector3(-443.0700, -38.9600, 40.8800), job = "illegal", label = "Мафия"},
	{coords = vector3(818.1800, -2155.3400, 29.6200), job = "weapons", label = "Мафия"},
	{coords = vector3(321.0529, -2096.8130, -10.7285), job = "coke", label = "Мафия"}, 
	{coords = vector3(2221.5800, 5614.8000, 54.9000), job = "weed", label = "Мафия"},
	{coords = vector3(-9.5000, 6654.2700, 31.7000), job = "meth", label = "Мафия"},
	{coords = vector3(91.3400, -1968.7400, -6.6300), job = "clowns", label = "Мафия"},
	{coords = vector3(-146.7800, 295.6400, 98.8700), job = "bahamas", label = "Ресторант"},
	{coords = vector3(1272.1101, -1712.0581, 54.7715), job = "whitehats", label = "Хакери"},
	{coords = vector3(-1374.7393, -462.6748, 72.0422), job = "broker", label = "Брокери"},  
	{coords = vector3(288.3323, -1273.0944, 29.4408), job = "gotur", label = "EBAG"}
		


},



--Boss menu users by grade name and their permissions
BossMenuUsers = {

	['boss'] = {canWithdraw = true, canDeposit = true, canHire = true, canRank = true, canFire = true, canBonus = true},
	['chef'] = {canWithdraw = false, canDeposit = true, canHire = true, canRank = false, canFire = true, canBonus = false}
	
	

},


DefaultJobsInJobCenter = { -- Jobs that can be added by going to the job center. For icons use https://fontawesome.com/
	
	{job = 'miner', label = "Миньор", icon = "fas fa-gem", description = "Копаеш руди и извличаш ценни метали"},
	{job = 'fisherman', label = "Рибар", icon = "fas fa-fish", description = "Иди да ловиш риба с приятна компания."},
	{job = 'fueler', label = "Бензинджия", icon = "fas fa-gas-pump", description = "Карай голямата цистерна и носи руди"},
	{job = 'lumberjack', label = "Дървар", icon = "fas fa-tree", description = "Обработваш дърво."},
	{job = 'slaughterer', label = "Касапин", icon = "fas fa-bacon", description = "Подготвяне на месо."},
	{job = 'tailor', label = "Шивач", icon = "fas fa-tshirt", description = "Събирай вълна, преработвай я в текстил и произвеждай дрехи."},
	{job = 'garbage', label = "Боклукчия", icon = "fas fa-recycle", description = "Събирай боклуците из града."},
	{job = 'farmer', label = "Фермер", icon = "fas fa-carrot", description = "Какво е да си фермер? Сега ще разбереш."},
	{job = 'unemployed', label = "Безработен", icon = "fas fa-ban", description = "Нуждаеш се от отпуска"}

},


Text = {

	['open_jobcenter_ui_hologram'] = '[~b~E~w~] За да отвориш трудова борса',
	['promoted'] = 'Ти беше назначен',
	['promoted_other'] = 'Ти беше назначен на друга работа!',
	['fired'] = 'Ти беше уволнен',
	['fired_other'] = 'Ти беше уволнен',
	['hired'] = 'Ти беше назначен',
	['bossmenu_hologram'] = '[~b~E~w~] Шефско меню',
	['action_success'] = 'Успешно',
	['action_unsuccessful'] = 'Неуспешно',
	['cant_access_bossmenu'] = 'Не си шеф',
	['insufficent_balance'] = 'Нема пари',
	['bonus_given'] = 'Бонуса е изпратен!',
	['bonus_recieved'] = 'Ти получи бонус! +$'

}
	

}

-- Only change if you know what are you doing!
function SendTextMessage(msg)

		SetNotificationTextEntry('STRING')
		AddTextComponentString(msg)
		DrawNotification(0,1)

		--EXAMPLE USED IN VIDEO
		--exports['mythic_notify']:SendAlert('error', msg)

end
