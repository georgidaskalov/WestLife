Keys = {["E"] = 38, ["L"] = 182, ["G"] = 47}

payAmount = 0
Basket = {}

ESX = nil 
Citizen.CreateThread(function()
    while ESX == nil do
        Citizen.Wait(10)

        TriggerEvent("esx:getSharedObject", function(obj)
            ESX = obj
        end)
    end
end)

DrawText3D = function(x, y, z, text)
    local onScreen,x,y = World3dToScreen2d(x, y, z)
    local factor = #text / 370

    if onScreen then
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(x,y)
        DrawRect(x,y + 0.0125, 0.015 + factor, 0.03, 0, 0, 0, 120)
    end
end

_RequestModel = function(hash)
    if type(hash) == "string" then hash = GetHashKey(hash) end
    RequestModel(hash)
    while not HasModelLoaded(hash) do
        Wait(10)
    end
end

Deletetendero = function()
    for i=1, #Config.Locations do
        local tendero = Config.Locations[i]["tendero"]
        if DoesEntityExist(tendero["entity"]) then
            DeletePed(tendero["entity"])
            SetPedAsNoLongerNeeded(tendero["entity"])
        end
    end
end

Citizen.CreateThread(function()
    local defaultHash = 416176080
    for i=1, #Config.Locations do
        local tendero = Config.Locations[i]["tendero"]
        if tendero then
            tendero["hash"] = tendero["hash"] or defaultHash
            _RequestModel(tendero["hash"])
            if not DoesEntityExist(tendero["entity"]) then
                tendero["entity"] = CreatePed(4, tendero["hash"], tendero["x"], tendero["y"], tendero["z"], tendero["h"])
                SetEntityAsMissionEntity(tendero["entity"])
                SetBlockingOfNonTemporaryEvents(tendero["entity"], true)
                FreezeEntityPosition(tendero["entity"], true)
                SetEntityInvincible(tendero["entity"], true)
            end
            SetModelAsNoLongerNeeded(tendero["hash"])
        end
    end
end)

--[[Citizen.CreateThread(function()
    for i=1, #Config.Locations do
        local blip = Config.Locations[i]["blip"]

        if blip then
            if not DoesBlipExist(blip["id"]) then
                blip["id"] = AddBlipForCoord(blip["x"], blip["y"], blip["z"])
                SetBlipSprite(blip["id"], 52)
                SetBlipDisplay(blip["id"], 4)
                SetBlipScale(blip["id"], 0.7)
                SetBlipColour(blip["id"], 2)
                SetBlipAsShortRange(blip["id"], true)
--
    ---            BeginTextCommandSetBlipName("shopblip")
    ---            AddTextEntry("shopblip", "Електроника")
    --            EndTextCommandSetBlipName(blip["id"])
   --         end
  --      end
  --  end
--end)--]]

pNotify = function(message, messageType, messageTimeout)
	TriggerEvent("pNotify:SendNotification", {
        text = message,
		type = messageType,
		queue = "global",
		timeout = messageTimeout,
		layout = "bottomright"
	})
end

Marker = function(pos)
    DrawMarker(29, pos["x"], pos["y"], pos["z"] - 0.48, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 0.4, 0.4, 0, 104, 221, 60, true, false, 2, false, nil, nil, false)
    DrawMarker(27, pos["x"], pos["y"], pos["z"] - 0.98, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.8, 0.8, 0.8, 0, 104, 221, 60, false, false, 2, true, nil, nil, false)
end

AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        TriggerServerEvent('esx:clientLog', "[kx-shops]: borrando arichivos cache")
        Deletetendero()
    end
end)
