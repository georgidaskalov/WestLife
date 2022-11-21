Citizen.CreateThread(function()
    while true do
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 0.5)  	
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_KNIFE"), 0.5) 		 	
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_NIGHTSTICK"), 0.3)  
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_CROWBAR"), 0.3) 		
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_DAGGER"), 0.5)  	
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_FLASHLIGHT"), 0.4)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_COMBATPISTOL"), 0.7)
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PISTOL"), 0.7)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MICROSMG"), 0.6) 
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SPECIALCARBINE"), 0.6)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_BULLPUPSHOTGUN"), 1.0)
        Wait(0)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
	local ped = PlayerPedId()
	SetPedSuffersCriticalHits(ped, false)
        if IsPedArmed(ped, 6) then
	   DisableControlAction(1, 140, true)
       	   DisableControlAction(1, 141, true)
           DisableControlAction(1, 142, true)
        end
    end
end)