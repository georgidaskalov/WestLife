Config = {}

 

Config.Animations = {

   

    {

        name  = 'festives',

        label = 'Забавления',

        items = {

        {label = "Свиря на китара/барабани", type = "scenario", data = {anim = "WORLD_HUMAN_MUSICIAN"}},

        {label = "DJ", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@dj", anim = "dj"}},

        {label = "Голяма бира", type = "scenario", data = {anim = "WORLD_HUMAN_DRINKING"}},

        {label = "Малка бира", type = "scenario", data = {anim = "WORLD_HUMAN_PARTYING"}},

        {label = "Разцепвам се на метал", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@air_guitar", anim = "air_guitar"}},

        {label = "Неприлични танци", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@air_shagging", anim = "air_shagging"}},

        {label = "Rock'n'roll", type = "anim", data = {lib = "mp_player_int_upperrock", anim = "mp_player_int_rock"}},

        {label = "Пуша весела цигара", type = "scenario", data = {anim = "WORLD_HUMAN_SMOKING_POT"}},

        {label = "Правя се на пиян", type = "anim", data = {lib = "amb@world_human_bum_standing@drunk@idle_a", anim = "idle_a"}},

        --{label = "Kusmak", type = "anim", data = {lib = "oddjobs@taxi@tie", anim = "vomit_outside"}},

        }

    },

 

    {

        name  = 'greetings',

        label = 'Поздрави',

        items = {

        --{label = "Selam", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_hello"}},

        --{label = "El Sıkmak", type = "anim", data = {lib = "mp_common", anim = "givetake1_a"}},

        {label = "Поздрав", type = "anim", data = {lib = "mp_ped_interaction", anim = "handshake_guy_a"}},

        {label = "Гангстерска прегръдка", type = "anim", data = {lib = "mp_ped_interaction", anim = "hugs_guy_a"}},

        {label = "Козирувам", type = "anim", data = {lib = "mp_player_int_uppersalute", anim = "mp_player_int_salute"}},

        }

    },

 

    {

        name  = 'work',

        label = 'Работни',

        items = {

        {label = "Ръце зад тила", type = "anim", data = {lib = "random@arrests@busted", anim = "idle_c"}},

        --{label = "Balik Tut", type = "scenario", data = {anim = "world_human_stand_fishing"}}, --Test

        {label = "Оглеждане за улики", type = "anim", data = {lib = "amb@code_human_police_investigate@idle_b", anim = "idle_f"}},

        --{label = "Polis : Telsiz ile konus", type = "anim", data = {lib = "random@arrests", anim = "generic_radio_chatter"}},

        {label = "Регулировчки", type = "scenario", data = {anim = "WORLD_HUMAN_CAR_PARK_ATTENDANT"}},

        {label = "Гледам с бинокал", type = "scenario", data = {anim = "WORLD_HUMAN_BINOCULARS"}},

        {label = "Yeri kaz", type = "scenario", data = {anim = "world_human_gardener_plant"}},--Засаждане на наркотици

        {label = "Поправяне", type = "anim", data = {lib = "mini@repair", anim = "fixing_a_ped"}},--Анимация за механици(Поправяне)

        {label = "Стоя клекнал", type = "scenario", data = {anim = "CODE_HUMAN_MEDIC_KNEEL"}},

        {label = "Поглеждам задните пътници", type = "anim", data = {lib = "oddjobs@taxi@driver", anim = "leanover_idle"}},--Radial

        {label = "Подавам от колата", type = "anim", data = {lib = "oddjobs@taxi@cyi", anim = "std_hand_off_ps_passenger"}},

        --{label = "Bagaj Yukleniyor", type = "anim", data = {lib = "mp_am_hold_up", anim = "purchase_beerbox_shopkeeper"}},

        --{label = "Наливане на питие", type = "anim", data = {lib = "mini@drinking", anim = "shots_barman_b"}},

        {label = "Фотограф", type = "scenario", data = {anim = "WORLD_HUMAN_PAPARAZZI"}},

        {label = "Гледам записките", type = "scenario", data = {anim = "WORLD_HUMAN_CLIPBOARD"}},

        {label = "Блъскам с чук", type = "scenario", data = {anim = "WORLD_HUMAN_HAMMERING"}},

        {label = "Прося", type = "scenario", data = {anim = "WORLD_HUMAN_BUM_FREEWAY"}},

        {label = "Имитирам статуя", type = "scenario", data = {anim = "WORLD_HUMAN_HUMAN_STATUE"}},

        }

    },

 

    {

		name  = 'humors',

        label = 'Движения',

        items = {

        {label = "Аплодисменти", type = "scenario", data = {anim = "WORLD_HUMAN_CHEERING"}},

        {label = "Евала", type = "anim", data = {lib = "mp_action", anim = "thanks_male_06"}},

        {label = "Точно така", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_point"}},

        {label = "Аре давай", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_come_here_soft"}},

        {label = "Ти кво бе", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_bring_it_on"}},

        --{label = "Ben", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_me"}},

        --{label = "Stealing", type = "anim", data = {lib = "anim@am_hold_up@male", anim = "shoplift_high"}},

        --{label = "Idle 1", type = "scenario", data = {lib = "amb@world_human_jog_standing@male@idle_b", anim = "idle_d"}},

        --{label = "Idle 2", type = "scenario", data = {lib = "amb@world_human_bum_standing@depressed@idle_a", anim = "idle_a"}},

        {label = "О Боже", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@face_palm", anim = "face_palm"}},

        {label = "Спокойно", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_easy_now"}},

        {label = "Неспокоен", type = "anim", data = {lib = "oddjobs@assassinate@multi@", anim = "react_big_variations_a"}},

        {label = "Страх ме е", type = "anim", data = {lib = "amb@code_human_cower_stand@male@react_cowering", anim = "base_right"}},

        {label = "Раздвиждам се", type = "anim", data = {lib = "anim@deathmatch_intros@unarmed", anim = "intro_male_unarmed_e"}},

        {label = "Заеби", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_damn"}},

        --{label = "Test", type = "anim", data = {lib = "mp_ped_interaction", anim = "kisses_cam"}},

        {label = "Прегръдка", type = "anim", data = {lib = "mp_ped_interaction", anim = "kisses_guy_b"}},

        --{label = "Saril 2", type = "anim", data = {lib = "mp_ped_interaction", anim = "kisses_guy_b"}},

        {label = "Майната ви", type = "anim", data = {lib = "mp_player_int_upperfinger", anim = "mp_player_int_finger_01_enter"}},

        {label = "Задоволявам се", type = "anim", data = {lib = "mp_player_int_upperwank", anim = "mp_player_int_wank_01"}},

        {label = "Самоубивам се", type = "anim", data = {lib = "mp_suicide", anim = "pistol"}},

        }

    },

 

    {

        name  = 'Спортни',

        label = 'Спортни',

        items = {

        {label = "Правя се на як", type = "anim", data = {lib = "amb@world_human_muscle_flex@arms_at_side@base", anim = "base"}},

        --{label = "Lifting Weights", type = "anim", data = {lib = "amb@world_human_muscle_free_weights@male@barbell@base", anim = "base"}},

        {label = "Лицеви опори", type = "anim", data = {lib = "amb@world_human_push_ups@male@base", anim = "base"}},

        {label = "Коремни преси", type = "anim", data = {lib = "amb@world_human_sit_ups@male@base", anim = "base"}},

        {label = "Йога", type = "anim", data = {lib = "amb@world_human_yoga@male@base", anim = "base_a"}},

        }

    },

 

    {

        name  = 'misc',

        label = 'Разни',

        items = {

        --{label = "Kahve Ic", type = "anim", data = {lib = "amb@world_human_aa_coffee@idle_a", anim = "idle_a"}},

        --{label = "Telefon ile ugras", type = "anim", data = {lib = "anim@heists@prison_heistunfinished_biztarget_idle", anim = "target_idle"}},

        --{label = "Седнал на земята", type = "scenario", data = {anim = "WORLD_HUMAN_PICNIC"}},

        --{label = "сад", type = "scenario", data = {anim = "world_human_leaning"}},

        {label = "Лежа по гръб", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE_BACK"}},

        {label = "Лежа по корем", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE"}},

        {label = "Почистване", type = "scenario", data = {anim = "world_human_maid_clean"}},

        --{label = "Cooking BBQ", type = "scenario", data = {anim = "PROP_HUMAN_BBQ"}},

        {label = "T-Поза", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_bj_to_prop_female"}},

        {label = "Правя си селфи", type = "scenario", data = {anim = "world_human_tourist_mobile"}},

        {label = "Подслушвам", type = "anim", data = {lib = "mini@safe_cracking", anim = "idle_base"}},

        }

    },

	

--[[

	{

		name  = 'attitudem',

		label = 'TUTUMLAR',

		items = {

	    {label = "Normal M", type = "attitude", data = {lib = "move_m@confident", anim = "move_m@confident"}},

	    {label = "Normal F", type = "attitude", data = {lib = "move_f@heels@c", anim = "move_f@heels@c"}},

	    {label = "Depressif", type = "attitude", data = {lib = "move_m@depressed@a", anim = "move_m@depressed@a"}},

	    {label = "Depressif F", type = "attitude", data = {lib = "move_f@depressed@a", anim = "move_f@depressed@a"}},

	    {label = "Business", type = "attitude", data = {lib = "move_m@business@a", anim = "move_m@business@a"}},

	    {label = "Determine", type = "attitude", data = {lib = "move_m@brave@a", anim = "move_m@brave@a"}},

	    {label = "Casual", type = "attitude", data = {lib = "move_m@casual@a", anim = "move_m@casual@a"}},

	    {label = "Trop mange", type = "attitude", data = {lib = "move_m@fat@a", anim = "move_m@fat@a"}},

	    {label = "Hipster", type = "attitude", data = {lib = "move_m@hipster@a", anim = "move_m@hipster@a"}},

	    {label = "Blesse", type = "attitude", data = {lib = "move_m@injured", anim = "move_m@injured"}},

	    {label = "Intimide", type = "attitude", data = {lib = "move_m@hurry@a", anim = "move_m@hurry@a"}},

	    {label = "Hobo", type = "attitude", data = {lib = "move_m@hobo@a", anim = "move_m@hobo@a"}},

	    {label = "Malheureux", type = "attitude", data = {lib = "move_m@sad@a", anim = "move_m@sad@a"}},

	    {label = "Muscle", type = "attitude", data = {lib = "move_m@muscle@a", anim = "move_m@muscle@a"}},

	    {label = "Choc", type = "attitude", data = {lib = "move_m@shocked@a", anim = "move_m@shocked@a"}},

	    {label = "Sombre", type = "attitude", data = {lib = "move_m@shadyped@a", anim = "move_m@shadyped@a"}},

	    {label = "Fatigue", type = "attitude", data = {lib = "move_m@buzzed", anim = "move_m@buzzed"}},

	    {label = "Pressee", type = "attitude", data = {lib = "move_m@hurry_butch@a", anim = "move_m@hurry_butch@a"}},

	    {label = "Fier", type = "attitude", data = {lib = "move_m@money", anim = "move_m@money"}},

	    {label = "Petite course", type = "attitude", data = {lib = "move_m@quick", anim = "move_m@quick"}},

	    {label = "Mangeuse d'homme", type = "attitude", data = {lib = "move_f@maneater", anim = "move_f@maneater"}},

	    {label = "Impertinent", type = "attitude", data = {lib = "move_f@sassy", anim = "move_f@sassy"}},	

	    {label = "Arrogante", type = "attitude", data = {lib = "move_f@arrogant@a", anim = "move_f@arrogant@a"}},

		}

	},



]]

    {

        name  = 'porn',

        label = '18+',

        items = {

        {label = "Car Blowjob", type = "anim", data = {lib = "oddjobs@towing", anim = "m_blow_job_loop"}},

        {label = "Car Giving Head", type = "anim", data = {lib = "oddjobs@towing", anim = "f_blow_job_loop"}},

        {label = "Male Car Sex", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_player"}},

        {label = "Female Car Sex", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_female"}},

        {label = "Itching Balls", type = "anim", data = {lib = "mp_player_int_uppergrab_crotch", anim = "mp_player_int_grab_crotch"}},

        {label = "Hooker", type = "anim", data = {lib = "mini@strip_club@idles@stripper", anim = "stripper_idle_02"}},

        {label = "Smoking Hooker", type = "scenario", data = {anim = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS"}},

        {label = "Horny Hooker", type = "anim", data = {lib = "mini@strip_club@backroom@", anim = "stripper_b_backroom_idle_b"}},

        {label = "Strip Tease 1", type = "anim", data = {lib = "mini@strip_club@lap_dance@ld_girl_a_song_a_p1", anim = "ld_girl_a_song_a_p1_f"}},

        {label = "Strip Tease 2", type = "anim", data = {lib = "mini@strip_club@private_dance@part2", anim = "priv_dance_p2"}},

        {label = "Stip Tease 3", type = "anim", data = {lib = "mini@strip_club@private_dance@part3", anim = "priv_dance_p3"}},

            }

    },



    {

        name  = 'hakanonur',

        label = '18+ (2)',

        items = {

        {label = "Седнал на сепаре", type = "anim", data = {lib = "mp_am_stripper", anim = "lap_dance_player"}},

        {label = "Еротичен танц 1", type = "anim", data = {lib = "mp_am_stripper", anim = "lap_dance_girl"}},

        {label = "Еротичен танц 2", type = "anim", data = {lib = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2", anim = "ld_girl_a_song_a_p2_f"}},

        --{label = "Еротичен танц 3", type = "anim", data = {lib = "mini@strip_club@lap_dance@ld_girl_a_song_a_p3", anim = "ld_girl_a_song_a_p3_f"}},

        {label = "Еротичен танц 3", type = "anim", data = {lib = "mini@strip_club@private_dance@part1", anim = "priv_dance_p1"}},

        {label = "Френска любов (жена) ", type = "anim", data = {lib = "misscarsteal2pimpsex", anim = "pimpsex_hooker"}},

        {label = "Френска любов (мъж) ", type = "anim", data = {lib = "misscarsteal2pimpsex", anim = "pimpsex_punter"}},

        --{label = "Sokakta Ver Kız", type = "anim", data = {lib = "misscarsteal2pimpsex", anim = "shagloop_hooker"}},

        {label = "Вкарвам инжекция", type = "anim", data = {lib = "misscarsteal2pimpsex", anim = "shagloop_pimp"}},

        {label = "Любов в колата (мъж) ", type = "anim", data = {lib = "oddjobs@assassinate@vice@sex", anim = "frontseat_carsex_loop_m"}}, 

        --{label = "Любов в колата (жени) ", type = "anim", data = {lib = "oddjobs@assassinate@vice@sex", anim = "frontseat_carsex_intro_f"}}, 

        {label = "Любов в колата (жени) ", type = "anim", data = {lib = "oddjobs@assassinate@vice@sex", anim = "frontseat_carsex_loop_f"}},

        --{label = "Üstünde Zıpla", type = "anim", data = {lib = "random@drunk_driver_2", anim = "cardrunksex_loop_f"}},             

            }

    },



    {

        name  = 'hakanonur2',

        label = 'Танци (Бързи) (жени)',

        items = {

        {label = "--- Танци 1 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^1"}},

        {label = "Dance 2", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^2"}},

        {label = "Dance 3", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^3"}},

        {label = "Dance 4", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^4"}},

        {label = "Dance 5", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^5"}},

        {label = "Dance 6", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "--- Танци 2 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v1_female^5"}},

        {label = "--- Танци 3 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v2_female^6"}},

        {label = "--- Танци 4 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_11_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_11_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_11_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_11_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_11_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_11_v1_female^6"}},

        {label = "--- Танци 5 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_13_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_13_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_13_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_13_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_13_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_13_v2_female^6"}},

        {label = "--- Танци 6 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v1_female^6"}},

        {label = "--- Танци 7 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v2_female^6"}},

        {label = "--- Танци 8 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v1_female^6"}},

        {label = "--- Танци 9 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v2_female^6"}},



        

             

        }

    },





    {

        name  = 'hakanonur20',

        label = 'Танци 2 (Бързи) (Жени)',

        items = {

        {label = "--- Танци 1 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v1_female^6"}},

        {label = "--- Танци 2 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v2_female^6"}},

        {label = "--- Танци 3 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_11_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_11_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_11_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_11_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_11_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_11_v1_female^6"}},

        {label = "--- Танци 4 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_13_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_13_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_13_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_13_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_13_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_13_v2_female^6"}},

        {label = "--- Танци 5 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v1_female^6"}},

        {label = "--- Танци 6 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v2_female^6"}},

        {label = "--- Танци 7 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v1_female^6"}},

        {label = "--- Танци 8 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v2_female^6"}},





        

             

        }

    },



    {

        name  = 'hakanonur30',

        label = 'Танци 3 (Бързи) (Жени)',

        items = {

        {label = "--- Танци 1 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_female^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_female^6"}},

        {label = "--- Танци 2 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_female^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_11_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_11_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_11_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_11_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_11_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_11_v1_female^6"}},

        {label = "--- Танци 3 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v1_female^6"}},

        {label = "--- Танци 4 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v2_female^6"}},

        {label = "--- Танци 5 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_15_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_15_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_15_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_15_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_15_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_15_v1_female^6"}},







        

             

        }

    },







    {

        name  = 'hakanonur4',

        label = 'Танци (Умерени) (Жени)',

        items = {

        {label = "--- Танци 1 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_09_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_09_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_09_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_09_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_09_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_09_v2_female^6"}},

        {label = "--- Танци 2 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_11_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_11_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_11_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_11_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_11_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_11_v1_female^6"}},

        {label = "--- Танци 3 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_13_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_13_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_13_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_13_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_13_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_13_v2_female^6"}},

        {label = "--- Танци 4 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v1_female^6"}},

        {label = "--- Танци 5 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v2_female^6"}},

        {label = "--- Танци 6 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v1_female^6"}},

        {label = "--- Танци 7 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v2_female^6"}},



        

             

        }

    },





    {

        name  = 'hakanonur3',

        label = 'Танци (Бавни) (Жени)',

        items = {

        {label = "--- Танци 1 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v1_female^5"}},

        {label = "--- Танци 2 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v2_female^6"}},

        {label = "--- Танци 3 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_11_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_11_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_11_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_11_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_11_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_11_v1_female^6"}},

        {label = "--- Танци 4 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_13_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_13_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_13_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_13_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_13_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_13_v2_female^6"}},

        {label = "--- Танци 5 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v1_female^6"}},

        {label = "--- Танци 6 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v2_female^6"}},

        {label = "--- Танци 7 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v1_female^6"}},

        {label = "--- Танци 8 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v2_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v2_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v2_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v2_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v2_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v2_female^6"}},



        

             

        }

    },









    {

        name  = 'hakanonur3',

        label = 'Диско',

        items = {

        

        {label = "--- KADIN---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds_transitions@", anim = "trans_li-mi_to_mi-hi_09_v1_female^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds_transitions@", anim = "trans_li-mi_to_mi-hi_09_v1_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds_transitions@", anim = "trans_li-mi_to_mi-hi_09_v1_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds_transitions@", anim = "trans_li-mi_to_mi-hi_09_v1_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds_transitions@", anim = "trans_li-mi_to_mi-hi_09_v1_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds_transitions@", anim = "trans_li-mi_to_mi-hi_09_v1_female^6"}},

        {label = "--- KADIN ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds@", anim = "li-mi_amb_club_06_base_female^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds@", anim = "li-mi_amb_club_06_base_female^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds@", anim = "li-mi_amb_club_06_base_female^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds@", anim = "li-mi_amb_club_06_base_female^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds@", anim = "li-mi_amb_club_06_base_female^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds@", anim = "li-mi_amb_club_06_base_female^1"}},



        

             

        }

    },



    {

        name  = 'hakanonur04',

        label = 'Танци (Бързи) (Мъже)',

        items = {

        {label = "--- Танци 1 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^1"}},

        {label = "Dance 2", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^2"}},

        {label = "Dance 3", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^3"}},

        {label = "Dance 4", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^4"}},

        {label = "Dance 5", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^5"}},

        {label = "Dance 6", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "--- Танци 2 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v1_male^5"}},

        {label = "--- Танци 3 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_09_v2_male^6"}},

        {label = "--- Танци 4 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_11_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_11_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_11_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_11_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_11_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_11_v1_male^6"}},

        {label = "--- Танци 5 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_13_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_13_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_13_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_13_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_13_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_13_v2_male^6"}},

        {label = "--- Танци 6 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v1_male^6"}},

        {label = "--- Танци 7 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_15_v2_male^6"}},

        {label = "--- Танци 8 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v1_male^6"}},

        {label = "--- Танци 9 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "hi_dance_crowd_17_v2_male^6"}},

    

        

             

        }

    },

    

    

    {

        name  = 'hakanonur05',

        label = 'Танци 2 (Бързи) (Мъже)',

        items = {

        {label = "--- Танци 1 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v1_male^6"}},

        {label = "--- Танци 2 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v2_male^6"}},

        {label = "--- Танци 3 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_11_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_11_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_11_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_11_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_11_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_11_v1_male^6"}},

        {label = "--- Танци 4 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_13_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_13_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_13_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_13_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_13_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_13_v2_male^6"}},

        {label = "--- Танци 5 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v1_male^6"}},

        {label = "--- Танци 6 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_15_v2_male^6"}},

        {label = "--- Танци 7 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v1_male^6"}},

        {label = "--- Танци 8 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_17_v2_male^6"}},

    

    

        

             

        }

    },

    

    {

        name  = 'hakanonur06',

        label = 'Танци 3 (Бързи) (Мъже)',

        items = {

        {label = "--- Танци 1 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_male^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_male^6"}},

        {label = "--- Танци 2 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_male^1"}},    

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_11_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_11_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_11_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_11_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_11_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_11_v1_male^6"}},

        {label = "--- Танци 3 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v1_male^6"}},

        {label = "--- Танци 4 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_13_v2_male^6"}},

        {label = "--- Танци 5 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_15_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_15_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_15_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_15_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_15_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_15_v1_male^6"}},

    

    

    

        

             

        }

    },

    

    

    

    {

        name  = 'hakanonur07',

        label = 'Танци (Умерени) (Мъже)',

        items = {

        {label = "--- Танци 1 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_09_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_09_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_09_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_09_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_09_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_09_v2_male^6"}},

        {label = "--- Танци 2 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_11_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_11_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_11_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_11_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_11_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_11_v1_male^6"}},

        {label = "--- Танци 3 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_13_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_13_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_13_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_13_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_13_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_13_v2_male^6"}},

        {label = "--- Танци 4 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v1_male^6"}},

        {label = "--- Танци 5 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_15_v2_male^6"}},

        {label = "--- Танци 6 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v1_male^6"}},

        {label = "--- Танци 7 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "mi_dance_crowd_17_v2_male^6"}},

    

        

             

        }

    },

    

    

    {

        name  = 'hakanonur08',

        label = 'Танци (Бавни) (Мъже)',

        items = {

        {label = "--- Танци 1 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v1_male^5"}},

        {label = "--- Танци 2 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_09_v2_male^6"}},

        {label = "--- Танци 3 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_11_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_11_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_11_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_11_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_11_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_11_v1_male^6"}},

        {label = "--- Танци 4 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_13_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_13_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_13_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_13_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_13_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_13_v2_male^6"}},

        {label = "--- Танци 5 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v1_male^6"}},

        {label = "--- Танци 6 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_15_v2_male^6"}},

        {label = "--- Танци 7 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v1_male^6"}},

        {label = "--- Танци 8 ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v2_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v2_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v2_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v2_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v2_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@", anim = "li_dance_crowd_17_v2_male^6"}},

    

        

             

        }

    },

    

    

    

    

    {

        name  = 'hakanonur09',

        label = 'Диско',

        items = {

        

        {label = "--- KADIN---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds_transitions@", anim = "trans_li-mi_to_mi-hi_09_v1_male^1"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds_transitions@", anim = "trans_li-mi_to_mi-hi_09_v1_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds_transitions@", anim = "trans_li-mi_to_mi-hi_09_v1_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds_transitions@", anim = "trans_li-mi_to_mi-hi_09_v1_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds_transitions@", anim = "trans_li-mi_to_mi-hi_09_v1_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds_transitions@", anim = "trans_li-mi_to_mi-hi_09_v1_male^6"}},

        {label = "--- KADIN ---", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", anim = "trans_crowd_prop_hi_to_li_09_v1_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds@", anim = "li-mi_amb_club_06_base_male^2"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds@", anim = "li-mi_amb_club_06_base_male^3"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds@", anim = "li-mi_amb_club_06_base_male^4"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds@", anim = "li-mi_amb_club_06_base_male^5"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds@", anim = "li-mi_amb_club_06_base_male^6"}},

        {label = "Dance", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds@", anim = "li-mi_amb_club_06_base_male^1"}},

    

        

             

        }

    },





    {

        name  = 'hakanonur61616',

        label = '40 стила танци',

        items = {

        

        {label = "Dance 1", type = "anim", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds@med-hi_intensity", anim = "mi-hi_amb_club_10_v1_male^6"}},

        {label = "Dance 2", type = "anim", data = {lib = "amb@code_human_in_car_mp_actions@dance@bodhi@ds@base", anim = "idle_a_fp"}},

        {label = "Dance 3", type = "anim", data = {lib = "amb@code_human_in_car_mp_actions@dance@bodhi@rds@base", anim = "idle_b"}},

        {label = "Dance 4", type = "anim", data = {lib = "amb@code_human_in_car_mp_actions@dance@std@ds@base", anim = "idle_a"}},

        {label = "Dance 5", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", anim = "hi_dance_facedj_09_v2_male^6"}},

        {label = "Dance 6", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj@low_intesnsity", anim = "li_dance_facedj_09_v1_male^6"}},

        {label = "Dance 7", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_hi_intensity", anim = "trans_dance_facedj_hi_to_li_09_v1_male^6"}},

        {label = "Dance 8", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_low_intensity", anim = "trans_dance_facedj_li_to_hi_07_v1_male^6"}},

        {label = "Dance 9", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_13_v2_male^6"}},

        {label = "Dance 10", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_hi_intensity", anim = "trans_dance_crowd_hi_to_li__07_v1_male^6"}},

        {label = "Dance 11", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@hi_intensity", anim = "hi_dance_prop_13_v1_male^6"}},

        {label = "Dance 12", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_med_intensity", anim = "trans_crowd_prop_mi_to_li_11_v1_male^6"}},

        {label = "Dance 13", type = "anim", data = {lib = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", anim = "med_center_up"}},

        {label = "Dance 14", type = "anim", data = {lib = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", anim = "med_right_up"}},

        {label = "Dance 15", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@low_intensity", anim = "li_dance_crowd_17_v1_male^6"}},

        {label = "Dance 16", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_med_intensity", anim = "trans_dance_facedj_mi_to_li_09_v1_male^6"}},

        {label = "Dance Rak xD", type = "anim", data = {lib = "special_ped@zombie@monologue_4@monologue_4l", anim = "iamtheundead_11"}},

        {label = "Dance 17", type = "anim", data = {lib = "timetable@tracy@ig_5@idle_b", anim = "idle_e"}},

        {label = "Dance 18", type = "anim", data = {lib = "mini@strip_club@idles@dj@idle_04", anim = "idle_04"}},

        {label = "Dance 19", type = "anim", data = {lib = "special_ped@mountain_dancer@monologue_1@monologue_1a", anim = "mtn_dnc_if_you_want_to_get_to_heaven"}},

        {label = "Dance 20", type = "anim", data = {lib = "special_ped@mountain_dancer@monologue_4@monologue_4a", anim = "mnt_dnc_verse"}},

        {label = "Dance 21", type = "anim", data = {lib = "special_ped@mountain_dancer@monologue_3@monologue_3a", anim = "mnt_dnc_buttwag"}},

        {label = "Dance 22", type = "anim", data = {lib = "anim@amb@nightclub@dancers@black_madonna_entourage@", anim = "hi_dance_facedj_09_v2_male^5"}},

        {label = "Dance 23", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_male^6"}},

        {label = "Dance 24", type = "anim", data = {lib = "anim@amb@nightclub@dancers@dixon_entourage@", anim = "mi_dance_facedj_15_v1_male^4"}},

        {label = "Dance 25", type = "anim", data = {lib = "anim@amb@nightclub@dancers@podium_dancers@", anim = "hi_dance_facedj_17_v2_male^5"}},

        {label = "Dance 26", type = "anim", data = {lib = "anim@amb@nightclub@dancers@tale_of_us_entourage@", anim = "mi_dance_prop_13_v2_male^4"}},

        {label = "Dance 27", type = "anim", data = {lib = "misschinese2_crystalmazemcs1_cs", anim = "dance_loop_tao"}},

        {label = "Dance 28", type = "anim", data = {lib = "misschinese2_crystalmazemcs1_ig", anim = "dance_loop_tao"}},

        {label = "Dance 29", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@uncle_disco", anim = "uncle_disco"}},

        {label = "Dance 30", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@raise_the_roof", anim = "raise_the_roof"}},

        {label = "Dance 31", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@cats_cradle", anim = "cats_cradle"}},

        {label = "Dance 32", type = "anim", data = {lib = "anim@mp_player_intupperbanging_tunes", anim = "idle_a"}},

        {label = "Dance 33", type = "anim", data = {lib = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", anim = "high_center"}},

        {label = "Dance 34", type = "anim", data = {lib = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", anim = "high_center"}},

        {label = "Dance 35", type = "anim", data = {lib = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", anim = "high_center"}},

        {label = "Dance 36", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj_transitions@", anim = "trans_dance_facedj_hi_to_mi_11_v1_female^6"}},

        {label = "Dance 37", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_hi_intensity", anim = "trans_dance_facedj_hi_to_li_07_v1_female^6"}},

        {label = "Dance 38", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj@", anim = "hi_dance_facedj_09_v1_female^6"}},

        {label = "Dance 39", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v1_female^6"}},

        {label = "Dance 40", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@hi_podium@", anim = "danceidle_hi_06_base_laz"}},

    

        

             

        }

    },



    

 

}