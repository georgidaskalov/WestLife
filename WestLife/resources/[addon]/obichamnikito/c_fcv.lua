RegisterNetEvent('alzhe:fix')
AddEventHandler('alzhe:fix', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleEngineHealth(vehicle, 1000)
		SetVehicleEngineOn( vehicle, true, true )
		SetVehicleFixed(vehicle)
		SetVehicleDirtLevel(vehicle, 0)
		notification("~g~Оправих ти колата шефе !")
	else
		notification("~r~Трябва да си в кола.")
	end
end)

RegisterNetEvent('alzhe:noPerms')
AddEventHandler('alzhe:noPerms', function()
	notification("~r~Няма да се оправи.")
end)

function notification(msg)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(false, false)
end