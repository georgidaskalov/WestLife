Config = {

-- IMPORTANT! To configure report text navigate to /html/script.js and find the text you want to replace

EvidenceReportInformationBullet = "firstname, lastname, sex", -- The information displayd from users table in mysql in the evidence report (ONLY CHANGE IF YOU KNOW WHAT ARE YOU DOING)
EvidenceReportInformationFingerprint = "firstname, lastname, sex", -- The information displayd from users table in mysql in the evidence report (ONLY CHANGE IF YOU KNOW WHAT ARE YOU DOING)
EvidenceReportInformationBlood = "firstname, lastname, sex", -- The information displayd from users table in mysql in the evidence report (ONLY CHANGE IF YOU KNOW WHAT ARE YOU DOING)

ShowBloodSplatsOnGround = true, -- Show blood on the ground when player is shot
PlayClipboardAnimation = true, -- Play clipboard animation when reading report

JobRequired = 'police', -- The job needed to use evidence system
JobGradeRequired = 1, -- The MINIMUM job grade required to use evidence system (If you use 0 all job grades can use the system)

CloseReportKey = 'BACKSPACE', -- The key used to close the report
PickupEvidenceKey = 'E', -- The key used to pick up evidence

EvidenceAlanysisLocation = vector3(371.5784, -1596.668, 33.356), -- 371.5784, -1596.668, 33.356, 221.7475 The place where the evidence will be analyzed and report generated
TimeToAnalyze = 10000, -- Time in miliseconds to analyze the given evidence
TimeToFindFingerprints = 3000, -- Time in miliseconds to find fingerprints in a car

--UPDATE V2
RainRemovesEvidence = true, -- Removes evidence when it starts raining!
TimeBeforeCrimsCanDestory = 300, -- Seconds before Criminals can destroy evidence (300 is the time when evidence coolsdown and shows up as WARM)
EvidenceStorageLocation = vector3(377.0736, -1598.784, 33.356), --377.0736, -1598.7845, 33.3564, 45.2316  The place where all evidence are being archived! You can view old evidence or delete it
--

Text = {

--UPDATE V2
['not_in_vehicle'] = 'За да го използваш трябва да си в автомобил!',
['remove_evidence'] = 'Унищожи улика [~r~E~w~]',
['cooldown_before_pickup'] = 'Уликата е твърде свежа/гореща, за да бъде унищожена',
['evidence_removed'] = 'Уликата е унищожена!',
['open_evidence_archive'] = '[~b~E~w~] Виж архива с улики',
['evidence_archive'] = 'Архив с улики',
['view'] = 'Виж',
['delete'] = 'Изхвърли',
['report_list'] = 'Доклад #',
['evidence_deleted_from_archive'] = 'Уликата е изхвърли от архива!',
--

['evidence_colleted'] = 'Улика #{number} е взета!',
['no_more_space'] = 'Няма достатъчно място за уликата 3/3!',
['analyze_evidence'] = '[~b~E~w~] Анализирай уликата',
['evidence_being_analyzed'] = 'Уликата се анализира! Моля изчакай',
['evidence_being_analyzed_hologram'] = '~b~Тази улика се анализира',
['read_evidence_report'] = '[~b~E~w~] Виж доклада на уликата',
['analyzing_car'] = 'Колата се проверява! Моля изчакай',
['pick_up_evidence_text'] = 'Вземи улика [~r~E~w~]',
['no_fingerprints_found'] = 'Няма намерени пръстови отпечатъци!',
['no_evidence_to_analyze'] = "Няма улика за анализиране!",
['shell_hologram'] = '~b~ {guncategory} ~w~ Гилза от куршум',
['blood_hologram'] = '~r~Кърваво петно',

['blood_after_0_minutes'] = 'Status: ~r~Свежа',
['blood_after_5_minutes'] = 'Status: ~y~На няколко часа',
['blood_after_10_minutes'] = 'Status: ~b~Стара',

['shell_after_0_minutes'] = 'Status: ~r~Гореща',
['shell_after_5_minutes'] = 'Status: ~y~Топла',
['shell_after_10_minutes'] = 'Status: ~b~Студена',


['submachine_category'] = 'Полуавтоматично оръжие',
['pistol_category'] = 'Пистолет',
['shotgun_category'] = 'Пушка',
['assault_category'] = 'Автоматично оръжие',
['lightmachine_category'] = 'Леко картечно оръжие',
['sniper_category'] = 'Снайпер',
['heavy_category'] = 'Тежко бойно оръжие'


}
	

}

-- Only change if you know what are you doing!
function SendTextMessage(msg)

		SetNotificationTextEntry('STRING')
		AddTextComponentString(msg)
		DrawNotification(0,1)

		--EXAMPLE USED IN VIDEO
		--exports['mythic_notify']:SendAlert('inform', msg)

end
