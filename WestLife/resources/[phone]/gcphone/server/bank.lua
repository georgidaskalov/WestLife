local DISCORD_WEBHOOK = "https://discord.com/api/webhooks/951898950674284586/-fMldqI4M6SbgbfF3R05RD95WhIZEwxmULIMiQZvvn-nDKt4MU337H9c4lCEApBeofuU" -- DISCORD WEEBHOOK HERE
local DISCORD_NAME = "bank-log"
local DISCORD_IMAGE = "https://imgur.com/PgQwgK0"
--
--  LEAKED BY S3NTEX -- 
--  https://discord.gg/aUDWCvM -- 
--  fivemleak.com -- 
--  fkn crew -- 
RegisterServerEvent("gcPhone:transfer")
AddEventHandler("gcPhone:transfer", function(a, b)
    local c = source;
    local d = ESX.GetPlayerFromId(c)
    local e = ESX.GetPlayerFromId(a)
    local f = 0;
    if e ~= nil then
        f = d.getAccount("bank").money;
        zbalance = e.getAccount("bank").money;
        if tonumber(c) == tonumber(a) then
            TriggerClientEvent("esx:showNotification", c, _U("send_yourself"))
        else
            if f <= 0 or f < tonumber(b) or tonumber(b) <= 0 then
                TriggerClientEvent("esx:showNotification", c, _U("send_yourself"))
            else
                if GetPlayerIdentifier(c) == GetPlayerIdentifier(a) then
                    sendToDiscord("Дубликира", "**Player: **"..GetPlayerName(c).. "\n**Target Player: **"..GetPlayerName(a)..  "**\nSteam Hex: **"..GetPlayerIdentifier(c)..  "**\nTarget Steam Hex: **"..GetPlayerIdentifier(a), 16711818)
                    TriggerEvent("BanSql:ICheat", "Добър опит , успех следващия път. Пусни си тикет в дискорд.https://discord.gg/W6A7Wm3c2U",d.source )
                    TriggerEvent("BanSql:ICheat", "Добър опит , успех следващия път. Пусни си тикет в дискорд.https://discord.gg/W6A7Wm3c2U",e.source )
                end
                d.removeAccountMoney("bank", tonumber(b))
                e.addAccountMoney("bank", tonumber(b))
                TriggerClientEvent("esx:showNotification", c, "$" .. b .. _U("bank_sending"))
                TriggerClientEvent("esx:showNotification", a, "$" .. b .. _U("bank_incoming"))
                MySQL.Async.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {["@identifier"] = e.identifier}, function(g)
                    if g[1] then
                        local h = g[1].firstname .. " " .. g[1].lastname; MySQL.Async.fetchAll("INSERT INTO crew_phone_bank (type, identifier, price, name) VALUES (@type, @identifier, @price, @name)", {["@type"] = 1, ["@identifier"] = d.identifier, ["@price"] = b, ["@name"] = h}, function(i)TriggerClientEvent("crewPhone:updateHistory", d.source)
                            end)
                    end
                end)
                MySQL.Async.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {["@identifier"] = d.identifier}, function(g)
                    if g[1] then
                        local h = g[1].firstname .. " " .. g[1].lastname; MySQL.Async.fetchAll("INSERT INTO crew_phone_bank (type, identifier, price, name) VALUES (@type, @identifier, @price, @name)", {["@type"] = 2, ["@identifier"] = e.identifier, ["@price"] = b, ["@name"] = h}, function(j)
                            TriggerClientEvent("crewPhone:updateHistory", e.source)
                            end)
                    end
                end)
            end
        end
    else
        TriggerClientEvent("esx:showNotification", c, _U("no_player_id"))
    end
end)
ESX.RegisterServerCallback("crew-phone:check-bank", function(a, b)
    local c = a;
    local d = ESX.GetPlayerFromId(c)
    MySQL.Async.fetchAll("SELECT * FROM crew_phone_bank WHERE identifier = @identifier ORDER BY time DESC LIMIT 5", {["@identifier"] = d.identifier}, function(e)b(e)
        end)
end)
ESX.RegisterServerCallback("crew-phone:check-bank-money", function(a, b)
    local c = a;
    local d = ESX.GetPlayerFromId(c)
    MySQL.Async.fetchAll("SELECT * FROM crew_phone_bank WHERE identifier = @identifier ORDER BY time DESC LIMIT 5", {["@identifier"] = d.identifier}, function(e)
        b(e)
        end)
end)
function myfirstname(a, b, c)
    MySQL.Async.fetchAll("SELECT firstname, phone_number FROM users WHERE users.firstname = @firstname AND users.phone_number = @phone_number", {["@phone_number"] = a, ["@firstname"] = b}, function(d)
        c(d[1])
    end)
end


RegisterServerEvent('phone:requestBankDetails')
AddEventHandler('phone:requestBankDetails', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('phone:ReceiveBank', source, xPlayer.getAccount('bank').money)
    TriggerEvent('crew:onPlayerLoaded', source)
end)

function sendToDiscord(name, message, color)
    local connect = {
        {
            ["color"] = color,
            ["title"] = "**".. name .."**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = " Logger by Fores#4148            ".. os.date("%X") .." "
            },
        }
    }
    PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
end