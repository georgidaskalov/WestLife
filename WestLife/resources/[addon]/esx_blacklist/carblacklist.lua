-- CONFIG --

-- Blacklisted vehicle models
carblacklist = {
	"HYDRA",
        "DELUXO",
        "TITAN",
        "JET",
        "LAZER",
        "TULA",
        "OPPRESSOR",
        "OPPRESSOR2",
        "BUZZARD",
        "CARGOBOB",
        "CARGOBOB2",
        "CARGOBOB3",
        "CARGOBOB4",
        "AKULA",
        "RHINO",
	"APC",
	"BARRAGE",
	"CHERNOBOG",
	"HALFTRACK",
	"KHANJALI",
	"MINITANK",
	"SCARAB",
	"SCARAB2",
	"SCARAB3",
	"THRUSTER",
	"TRAILERSMALL2",
	"KURUMA2",
	"TECHNICAL",
	"TECHNICAL2",
	"TECHNICAL3",
	"ZHABA",
	"NIGHTSHARK",
	"MENACER",
	"INSURGENT3",
	"INSURGENT2",
	"INSURGENT",
	"CARACARA",
	"BOMBUSHKA",
	"TAMPA3",
	"LAZER",
	"STRIKEFORCE",
	"VIGILANTE",
	"MOLOTOK",
	"KOSATKA",
	"BESRA",
	"COG552",
	"CERBERUS3",
	"CERBERUS2",
	"CERBERUS",
	"PHANTOM2",
	"ANNIHILATOR",
	"SAVAGE",
	"ANNIHILATOR2",
	"HUNTER",
	"SCRAMJET",
	"LIMO2",

	

}

-- CODE --

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			checkCar(GetVehiclePedIsIn(playerPed, false))

			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
			for _, blacklistedCar in pairs(carblacklist) do
				checkCar(GetClosestVehicle(x, y, z, 100.0, GetHashKey(blacklistedCar), 70))
			end
		end
	end
end)

function checkCar(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklisted(carModel) then
			_DeleteEntity(car)
			sendForbiddenMessage("This vehicle is blacklisted!")
		end
	end
end

function isCarBlacklisted(model)
	for _, blacklistedCar in pairs(carblacklist) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end