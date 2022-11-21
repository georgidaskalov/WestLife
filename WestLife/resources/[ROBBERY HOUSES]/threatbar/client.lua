function openGui(percent)
 local msg = "Тихо"
 if percent > 80 then
  msg = "Опасно"
 elseif percent > 60 then
  msg = "Неспокойно"
 elseif percent > 30 then
  msg = "Спокойно"
 end
 SendNUIMessage({runProgress = true, Length = percent, Task = msg})
end

function closeGui()
 SendNUIMessage({closeProgress = true})
end

local lastmessage = false

RegisterNetEvent("robbery:guiupdate")
AddEventHandler("robbery:guiupdate", function(percent)
 if not lastmessage then
  lastmessage = true
  openGui(percent)
  Citizen.Wait(2000)
  closeGui()
  Citizen.Wait(8500)
  lastmessage = false
 end
end)

RegisterNetEvent("robbery:guiclose")
AddEventHandler("robbery:guiclose", function()
 TriggerEvent("robbery:guiupdate",0)
 closeGui()
end)

RegisterCommand('cleanme', function()
    ClearPedBloodDamage(PlayerPedId())
  end, false)