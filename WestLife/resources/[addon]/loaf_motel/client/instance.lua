-- Leaked By: Leaking Hub | J. Snow | leakinghub.com
RegisterNetEvent("loaf_motel:spawn_motel")
AddEventHandler("loaf_motel:spawn_motel", function(instance)
    local interior = Shells[instance.interior]
    if interior then
        local model = LoadModel(interior.Object)
        if model.loaded then
            local shell = CreateObject(model.model, instance.location, false, false, false)
            SetEntityHeading(shell, 0.0)
            FreezeEntityPosition(shell, true)

            local spawned_objects = {}
            for k, v in pairs(interior.DefaultFurniture) do
                local model = LoadModel(v.object)
                if model.loaded then
                    model = model.model
                    local object = CreateObject(model, instance.location.x + v.offset.x, instance.location.y + v.offset.y, instance.location.z + v.offset.z, false, false, false)
                    FreezeEntityPosition(object, true)
                    if type(v.offset) == "vector4" then
                        SetEntityHeading(object, v.offset.w)
                    else
                        SetEntityHeading(object, 0.0)
                    end
                    table.insert(spawned_objects, object)
                end
            end

            ESX.UI.Menu.CloseAll()

            DoScreenFadeOut(750)
            while not IsScreenFadedOut() do 
                Wait(0) 
            end
            Cache.ManageTimeAndWeather = true
            
            local door = GetOffsetFromEntityInWorldCoords(shell, interior.Offsets.Door)
            for i = 1, 25 do
                SetEntityCoords(Cache.self, door)
                Wait(50)
                ClearAreaOfPeds(instance.location.x, instance.location.y, instance.location.z, 100.0, 1)
            end
            while IsEntityWaitingForWorldCollision(Cache.self) do
                SetEntityCoords(Cache.self, door)
                Wait(50)
                ClearAreaOfPeds(instance.location.x, instance.location.y, instance.location.z, 100.0, 1)
            end
            DoScreenFadeIn(1500)
            ClearAreaOfPeds(instance.location.x, instance.location.y, instance.location.z, 100.0, 1)

            local storage = GetOffsetFromEntityInWorldCoords(shell, interior.Offsets.Storage)
            local wardrobe = GetOffsetFromEntityInWorldCoords(shell, interior.Offsets.Wardrobe)

            while Cache.ManageTimeAndWeather do
                Wait(100)
                if #(Cache.coords - door) >= 50.0 then
                    SetEntityCoords(Cache.self, door)
                end

                while #(Cache.coords - storage) <= 0.7 and not ESX.UI.Menu.IsOpen("default", GetCurrentResourceName(), "select_item_type") do
                    Wait(0)
                    DrawTxt3D(storage, Strings["open_storage"])

                    if IsControlJustReleased(0, Config.Options.Control) then
                        OpenStorage(instance.instance)
                    end
                end

                while #(Cache.coords - wardrobe) <= 0.7 and not ESX.UI.Menu.IsOpen("default", GetCurrentResourceName(), "select_outfit") do
                    Wait(0)
                    DrawTxt3D(wardrobe, Strings["open_wardrobe"])

                    if IsControlJustReleased(0, Config.Options.Control) then
                        ESX.TriggerServerCallback("loaf_motel:getOutfits", function(outfits)
                            local elements = {}
                            for k, v in pairs(outfits) do
                                table.insert(elements, {label = v, id = k})
                            end

                            if #elements == 0 then
                                table.insert(elements, {label = Strings["no_outfits"], id = false})
                            end
                    
                            ESX.UI.Menu.Open("default", GetCurrentResourceName(), "select_outfit", {
                                title = Strings["select_outfit"],
                                align = Config.Options.Align,
                                elements = elements
                            }, function(data, menu)
                                if data.current.id then
                                    ESX.UI.Menu.Open("default", GetCurrentResourceName(), "select_wardrobe_action", {
                                        title = Strings["select_outfit"],
                                        align = Config.Options.Align,
                                        elements = {
                                            {label = Strings["equip_outfit"], value = "equip"},
                                            {label = Strings["delete_outfit"], value = "delete"},
                                        }
                                    }, function(data2, menu2)
                                        if data2.current.value == "equip" then
                                            ESX.TriggerServerCallback("loaf_motel:getOutfit", function(outfit)
                                                if outfit then
                                                    TriggerEvent("skinchanger:getSkin", function(skin)
                                                        TriggerEvent("skinchanger:loadClothes", skin, outfit)
                                                        TriggerEvent("esx_skin:setLastSkin", skin)
                                
                                                        TriggerEvent("skinchanger:getSkin", function(skin)
                                                            TriggerServerEvent("esx_skin:save", skin)
                                                        end)
                                                    end)
                                                end
                                            end, data.current.id)
                                        elseif data2.current.value == "delete" then
                                            ESX.UI.Menu.Open("default", GetCurrentResourceName(), "confirm_delete_outfit", {
                                                title = (Strings["confirm_delete"]):format(data.current.label),
                                                align = Config.Options.Align,
                                                elements = {
                                                    {label = Strings["no"], value = "no"},
                                                    {label = Strings["yes"], value = "yes"},
                                                }
                                            }, function(data3, menu3)
                                                menu3.close()
                                                if data3.current.value == "yes" then
                                                    TriggerServerEvent("loaf_motel:delete_outfit", data.current.id)
                                                    ESX.UI.Menu.CloseAll()
                                                end
                                            end, function(data3, menu3)
                                                menu3.close()
                                            end)
                                        end
                                    end, function(data2, menu2)
                                        menu2.close()
                                    end)
                                end
                            end, function(data, menu)
                                menu.close()
                            end)
                        end)
                    end
                end

                while Cache.ManageTimeAndWeather and #(Cache.coords - door) <= 1.4 do
                    Wait(0)
                    DrawTxt3D(door + vector3(0.0, 0.0, 1.0), (Strings["manage_motel"]):format(GlobalState[instance.instance] and Strings["unlocked"] or Strings["locked"]))

                    if IsControlJustReleased(0, Config.Options.Control) then
                        ESX.UI.Menu.Open("default", GetCurrentResourceName(), "manage_room", {
                            title = Config.Motels[instance.motel].Name,
                            align = Config.Options.Align,
                            elements = {
                                {label = Strings["toggle_lock"], value = "toggle_lock"},
                                {label = Strings["leave"], value = "exit"},
                            }
                        }, function(data, menu)
                            if data.current.value == "toggle_lock" then
                                TriggerServerEvent("loaf_motel:toggle_lock", instance.instance)
                            elseif data.current.value == "exit" then
                                Cache.ManageTimeAndWeather = false
                                menu.close()
                            end
                        end, function(data, menu)
                            menu.close()
                        end)
                    end
                end
            end

            TriggerServerEvent("loaf_motel:leave", instance.instance)

            DoScreenFadeOut(750)
            while not IsScreenFadedOut() do 
                Wait(0) 
            end

            Cache.ManageTimeAndWeather = false

            local door_coords = Config.Motels[instance.motel].Rooms[instance.room]
            for i = 1, 25 do
                SetEntityCoords(Cache.self, door_coords.xyz)
                Wait(50)
            end
            while IsEntityWaitingForWorldCollision(Cache.self) do
                SetEntityCoords(Cache.self, door_coords.xyz)
                Wait(50)
            end
            Wait(500)
            SetEntityHeading(Cache.self, door_coords.w)
            DoScreenFadeIn(1500)

            DeleteEntity(shell)
            for k, v in pairs(spawned_objects) do
                DeleteEntity(v)
            end
        end
    end
end)