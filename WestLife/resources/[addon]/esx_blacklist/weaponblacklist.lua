-- CONFIG --

-- Blacklisted weapons
weaponblacklist = {
    "WEAPON_RAYMINIGUN",
	"WEAPON_RAYCARBINE",
	"WEAPON_STICKYBOMB",
	"WEAPON_GRENADE",
	"WEAPON_RPG",
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_HEAVYSNIPER",
	"WEAPON_HEAVYSNIPER_MK2",
	"WEAPON_SNIPERRIFLE",
    "WEAPON_BOTTLE",
    "WEAPON_HAMMER",
    "WEAPON_HATCHET",
    "WEAPON_GOLFCLUB",
	"WEAPON_KNUCKLE",
	"WEAPON_MACHETE",
	"WEAPON_SWITCHBLADE",
	"WEAPON_WRENCH",
	"WEAPON_BATTLEAXE",
	--"WEAPON_STONE_HATCHET",
	"WEAPON_MARKSMANPISTOL",
    "WEAPON_REVOLVER",
	"WEAPON_REVOLVER_MK2",
	"WEAPON_DOUBLEACTION",
	"WEAPON_RAYPISTOL",
	"WEAPON_CERAMICPISTOL",
	"WEAPON_NAVYREVOLVER",
	"WEAPON_GADGETPISTOL",
	"WEAPON_SMG_MK2",
	"WEAPON_COMBATPDW",
    "WEAPON_MACHINEPISTOL",
	"WEAPON_SAWNOFFSHOTGUN",
	"WEAPON_ASSAULTSHOTGUN",
	"WEAPON_MUSKET",
	"WEAPON_HEAVYSHOTGUN",
	"WEAPON_DBSHOTGUN",
	"WEAPON_AUTOSHOTGUN",
	"WEAPON_COMBATSHOTGUN",
    "WEAPON_ASSAULTRIFLE_MK2",
	"WEAPON_CARBINERIFLE_MK2",
	"WEAPON_ADVANCEDRIFLE",
	"WEAPON_SPECIALCARBINE_MK2",
    "WEAPON_BULLPUPRIFLE",
    "WEAPON_BULLPUPRIFLE_MK2",
	"WEAPON_COMPACTRIFLE",
	"WEAPON_MILITARYRIFLE",
	"WEAPON_GUSENBERG",
	"WEAPON_COMBATMG",
	"WEAPON_COMBATMG_MK2",
	"WEAPON_HEAVYSNIPER_MK2",
	"WEAPON_MARKSMANRIFLE",
    "WEAPON_MARKSMANRIFLE_MK2",
	"WEAPON_GRENADELAUNCHER_SMOKE",
	"WEAPON_MOLOTOV",
	"WEAPON_PISTOL50",
   

}

-- Don't allow any weapons at all (overrides the blacklist)
disableallweapons = false

-- CODE --

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(200)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			nothing, weapon = GetCurrentPedWeapon(playerPed, true)

			if disableallweapons then
				RemoveAllPedWeapons(playerPed, true)
			else
				if isWeaponBlacklisted(weapon) then
					RemoveWeaponFromPed(playerPed, weapon)
					sendForbiddenMessage("Оръжието е блеклистнато!")
				end
			end
		end
	end
end)

function isWeaponBlacklisted(model)
	for _, blacklistedWeapon in pairs(weaponblacklist) do
		if model == GetHashKey(blacklistedWeapon) then
			return true
		end
	end

	return false
end