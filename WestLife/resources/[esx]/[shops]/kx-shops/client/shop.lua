function LoadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(10)
    end    
end

Citizen.CreateThread(function()
    while true do
        local wait = 750
        local coords = GetEntityCoords(PlayerPedId())
        for i=1, #Config.Locations do
            for j=1, #Config.Locations[i]["tienda"] do
                local pos = Config.Locations[i]["tienda"][j]
                local dist = GetDistanceBetweenCoords(coords, pos["x"], pos["y"], pos["z"], true)
                if dist <= 5.0 then
                    if dist <= 1.5 then
                        local text = Config.Locales[pos["value"]]
                        if dist <= 1.0 then
                            text = "~b~[~b~E~b~] ~w~" .. text
                            if IsControlJustPressed(0, Keys["E"]) then
                                OpenAction(pos, Config.Items[pos["value"]], Config.Locales[pos["value"]])
                        	end
                        end
                        DrawText3D(pos["x"], pos["y"], pos["z"], text)
                    end
                    wait = 5
                    Marker(pos)
                end
            end
        end
        Citizen.Wait(wait)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        if payAmount > 0 then
            for shop = 1, #Config.Locations do
                local blip = Config.Locations[shop]["blip"]
                local dist = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), blip["x"], blip["y"], blip["z"], true)
                if dist <= 20.0 then
                    if dist >= 12.0 then
                        pNotify("Излязохте от магазина, количката ви е изтрита!", "error", 2500)
                        payAmount = 0
                        Basket = {}
                    end
                end
            end
        end
    end
end)

OpenAction = function(action, shelf, text)
    if action["value"] == "kxcaja" then
        if payAmount > 0 and #Basket then
            CashRegister(text)
        else
            pNotify("Нямате нищо в количката си", 'error', 1500)
        end
    else
        ShelfMenu(text, shelf)
    end
end

--[[ Cash register menu ]]--
CashRegister = function(titel)
        local elements = {
            {label = '<span style="color:lightgreen; border-bottom: 1px solid lightgreen;">Купи</span>', value = "yes"},
            {label = 'Общо: <span style="color:green">$' .. payAmount ..'</span>'},
            {label = 'Продукти ⟩⟩', value = "nil"},

        }

        for i=1, #Basket do
            local item = Basket[i]
            table.insert(elements, {
                label = '<span style="color:red">*</span> ' .. item["label"] .. ': ' .. item["amount"] .. '',
                value = item["value"],
            })
        end

        ESX.UI.Menu.CloseAll()
        ESX.UI.Menu.Open(
            'default', GetCurrentResourceName(), 'kxshop',
            {
                title    = "" .. titel,
                align    = 'upper-left',
                elements = elements
            },
            function(data, menu)
            
                if data.current.value == "yes" then
                    menu.close()
                    ESX.UI.Menu.Open(
                        'default', GetCurrentResourceName(), 'kxshop2',
                        {
                            title    = "Начини за плащане",
                            align    = 'upper-left',
                            elements = {
                                {label = "Плати кеш", value = "cash"},
                                {label = "Плати с карта", value = "bank"},
                            },
                        },
                        
                        function(data2, menu2)
                            ESX.TriggerServerCallback('kx-shops:CheckMoney', function(hasMoney)
                                if hasMoney then
                                    TriggerServerEvent('kx-shops:tendero', payAmount, Basket, data2.current["value"])
                                    payAmount = 0
                                    Basket = {}
                                    menu2.close()
                                else
                                    pNotify("Нямате пари в нито един от начините на плащане", 'error', 1500)
                                end
                            end, payAmount, data2.current["value"])
                        end,
                        
                    function(data2, menu2)
                        menu2.close()
                    end)
                end
            end,
        function(data, menu)
            menu.close()
    end) 
end

--[[ Open shelf menu ]]--
ShelfMenu = function(titel, shelf)
    local elements = {}

    for i=1, #shelf do
        local shelf = shelf[i]
        table.insert(elements, {
            realLabel = shelf["label"],
            label = shelf["label"] .. ' (<span style="color:green">$' .. shelf["price"] .. '</span>)',
            item = shelf["item"],
            price = shelf["price"],
            value = 1, type = 'slider', min = 1, max = 15,
        })
    end
    
    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'kxshop',
        {
            title    = "" .. titel,
            align    = 'upper-left',
            elements = elements
        },
        function(data, menu)
        
            local alreadyHave, basketItem = CheckBasketItem(data.current.item)
            if alreadyHave then
                basketItem.amount = basketItem["amount"] + data.current.value
            else
                table.insert(Basket, {
                    label = data.current["realLabel"],
                    value = data.current["item"],
                    amount = data.current.value,
                    price = data.current["price"]
                })
            end
            FreezeEntityPosition(PlayerPedId(), true)
            exports['progressBars']:startUI(5000, "(" .. data.current.value .. ") " .. data.current["realLabel"] .. " се взима")
            LoadAnimDict('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
            TaskPlayAnim(PlayerPedId(), 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 'machinic_loop_mechandplayer', 8.0, 1.0, -1, 49, 0, 0, 0, 0)
            Citizen.Wait(5000)
            StopAnimTask(PlayerPedId(), 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 'machinic_loop_mechandplayer', 1.0)
            FreezeEntityPosition(GetPlayerPed(-1), false)
            Citizen.Wait(500)
            payAmount = payAmount + data.current["price"] * data.current.value
            pNotify("(" .. data.current.value .. ") " .. data.current["realLabel"] .. " Те са запазени във вашата количка, мога да я отворя с [L] ", 'kxnot', 4500)
            menu.close()      
        end,
    function(data, menu)
        menu.close()
    end)
end

--[[ Check if item already in basket ]]--
CheckBasketItem = function(item)
    for i=1, #Basket do
        if item == Basket[i]["value"] then
            return true, Basket[i]
        end
    end
    return false, nil
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if IsControlJustPressed(0, 182) then
            OpenBasket()
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if IsControlJustPressed(0, 177) then
            -- ESX.UI.Menu.CloseAll()
        end
    end
end)

-- RegisterCommand('++++basket', function() 
--     OpenBasket()
-- end, false)

-- [[ Opens basket menu ]]--
OpenBasket = function()
    if payAmount > 0 and #Basket then
        local elements = {
            {label = 'Обща цена: <span style="color:green">$' .. payAmount},
        }
        for i=1, #Basket do
            local item = Basket[i]
            table.insert(elements, {
                label = '<span style="color:red">*</span> ' .. item["label"] .. ': ' .. item["amount"] .. ' (<span style="color:green">$' .. item["price"] * item["amount"] .. '</span>)',
                value = "item_menu",
                index = i
            })
        end
        table.insert(elements, {label = '<span style="color:red">Изтрийте цялата количка', value = "empty"})

        ESX.UI.Menu.CloseAll()
        ESX.UI.Menu.Open(
            'default', GetCurrentResourceName(), 'basket',
            {
                title    = "Карта за пазаруване",
                align    = 'upper-left',
                elements = elements
            },
            function(data, menu)
                if data.current.value == 'empty' then
                    Basket = {}
                    payAmount = 0
                    menu.close()
                    pNotify("Изтрихте цялата количка.", "error", 2500)
                end
                if data.current.value == "item_menu" then
                    menu.close()
                    local index = data.current.index
                    local shopItem = Basket[index]

                    -- [[ Opens detailed (kinda) menu about item ]] --
                    ESX.UI.Menu.Open(
                        'default', GetCurrentResourceName(), 'basket_detailedmenu',
                        {
                            title    = "" .. shopItem["label"] .. " - " .. shopItem["amount"] .. "",
                            align    = 'upper-left',
                            elements = {
                                {label = shopItem["label"] .. " - $" .. shopItem["price"] * shopItem["amount"]},
                                {label = '<span style="color:red">Извадете от количката</span>', value = "deleteItem"},
                            },
                        },
                        function(data2, menu2)
                            if data2.current["value"] == "deleteItem" then
                                pNotify("Ти взе " .. Basket[index]["amount"] .." ".. Basket[index]["label"] .. " от количката", "success", 2500)
                                payAmount = payAmount - (Basket[index]["amount"] * Basket[index]["price"])
                                table.remove(Basket, index)
                                OpenBasket()
                            end
                        end,
                        function(data2, menu2)
                            menu2.close()
                            OpenBasket()
                        end
                    )
                end
            end,
            function(data, menu)
                
                menu.close()
            end
        )
    else
        ESX.UI.Menu.CloseAll()
    end
end