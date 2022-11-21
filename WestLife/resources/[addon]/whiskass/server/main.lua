local DISCORD_WEBHOOK = "PUT YOUR WEBHOOK HERE" -- DISCORD WEEBHOOK HERE
local DISCORD_NAME = "chistene-logs"
local DISCORD_IMAGE = "https://imgur.com/PgQwgK0"


ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

TriggerEvent('es:addGroupCommand', 'chistene', 'mod', function(source, args, user)
    if args[1] and GetPlayerName(args[1]) ~= nil and tonumber(args[2]) then
        local targett = tonumber(args[1])
        local amount = tonumber(args[2])
        sendToDiscord("Chistene " , "\n**Player: **"..GetPlayerName(source).. "\n**Target Player: **"..GetPlayerName(targett)..  "\n**Amount: **"..amount..   "**\nSteam Hex: **"..GetPlayerIdentifier(source)..  "**\nTarget Steam Hex: **"..GetPlayerIdentifier(targett), 0)
        TriggerEvent('whiskass:galiKote', tonumber(args[1]), tonumber(args[2]) , source)

    else
        TriggerClientEvent('chat:addMessage', source, { args = { _U('system_msn'), _U('invalid_player_id_or_actions') } })
    end
end, function(source, args, user)
    TriggerClientEvent('chat:addMessage', source, { args = { _U('system_msn'), _U('insufficient_permissions') } })
end, { help = _U('give_player_community'), params = { { name = "id", help = _U('target_id') }, { name = "actions", help = _U('action_count_suggested') } } })
_U('system_msn')

TriggerEvent('es:addGroupCommand', 'endchistene', 'mod', function(source, args, user)
    if args[1] then
        if GetPlayerName(args[1]) ~= nil then
            local targett = tonumber(args[1])

            sendToDiscord("EndChistene " , "\n**Player: **"..GetPlayerName(source).. "\n**Target Player: **"..GetPlayerName(targett) .. "**\nSteam Hex: **"..GetPlayerIdentifier(source)..  "**\nTarget Steam Hex: **"..GetPlayerIdentifier(targett), 66820)
            TriggerEvent('whiskass:endCommunityServiceCommand', tonumber(args[1]))
        else
            TriggerClientEvent('chat:addMessage', source, { args = { _U('system_msn'), _U('invalid_player_id') } })
        end
    else
        TriggerEvent('whiskass:endCommunityServiceCommand', source)
    end
end, function(source, args, user)
    TriggerClientEvent('chat:addMessage', source, { args = { _U('system_msn'), _U('insufficient_permissions') } })
end, { help = _U('unjail_people'), params = { { name = "id", help = _U('target_id') } } })

RegisterServerEvent('whiskass:endCommunityServiceCommand')
AddEventHandler('whiskass:endCommunityServiceCommand', function(source)
    if source ~= nil then
        releaseFromCommunityService(source)
    end
end)

-- unjail after time served
RegisterServerEvent('whiskass:prikluchiDaGalishKote')
AddEventHandler('whiskass:prikluchiDaGalishKote', function()
    releaseFromCommunityService(source)
end)

RegisterServerEvent('whiskass:zavurshiDaGalishKote')
AddEventHandler('whiskass:zavurshiDaGalishKote', function()

    local _source = source
    local identifier = GetPlayerIdentifiers(_source)[1]

    MySQL.Async.fetchAll('SELECT * FROM kotence WHERE identifier = @identifier', {
        ['@identifier'] = identifier
    }, function(result)

        if result[1] then
            MySQL.Async.execute('UPDATE kotence SET actions_remaining = actions_remaining - 1 WHERE identifier = @identifier', {
                ['@identifier'] = identifier
            })
        else
            print("ESX_CommunityService :: Problem matching player identifier in database to reduce actions.")
        end
    end)
end)

RegisterServerEvent('whiskass:produljiDaGalishKote')
AddEventHandler('whiskass:produljiDaGalishKote', function()

    local _source = source
    local identifier = GetPlayerIdentifiers(_source)[1]

    MySQL.Async.fetchAll('SELECT * FROM kotence WHERE identifier = @identifier', {
        ['@identifier'] = identifier
    }, function(result)

        if result[1] then
            MySQL.Async.execute('UPDATE kotence SET actions_remaining = actions_remaining + @extension_value WHERE identifier = @identifier', {
                ['@identifier'] = identifier,
                ['@extension_value'] = Config.ServiceExtensionOnEscape
            })
        else
            print("ESX_CommunityService :: Problem matching player identifier in database to reduce actions.")
        end
    end)
end)

RegisterServerEvent('whiskass:galiKote')
AddEventHandler('whiskass:galiKote', function(target, actions_count , source)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer ~= nil then

        
        local grupaResult = MySQL.Sync.fetchAll('SELECT `group` FROM users WHERE identifier = @identifier', {
            ['@identifier'] = xPlayer.identifier
        })
        local grupa = grupaResult[1].group

        if xPlayer["job"]["name"] == "police" or grupa ~= "user" then

            local identifier = GetPlayerIdentifiers(target)[1]

            MySQL.Async.fetchAll('SELECT * FROM kotence WHERE identifier = @identifier', {
                ['@identifier'] = identifier
            }, function(result)
                if result[1] then
                    MySQL.Async.execute('UPDATE kotence SET actions_remaining = @actions_remaining WHERE identifier = @identifier', {
                        ['@identifier'] = identifier,
                        ['@actions_remaining'] = actions_count
                    })
                else
                    MySQL.Async.execute('INSERT INTO kotence (identifier, actions_remaining) VALUES (@identifier, @actions_remaining)', {
                        ['@identifier'] = identifier,
                        ['@actions_remaining'] = actions_count
                    })
                end
            end)

            TriggerClientEvent('chat:addMessage', -1, { args = { _U('judge'), _U('comserv_msg', GetPlayerName(target), actions_count) }, color = { 147, 196, 109 } })
            TriggerClientEvent('esx_policejob:unrestrain', target)
            TriggerClientEvent('whiskass:inCommunityService', target, actions_count)
        else
            TriggerEvent("BanSql:ICheat", "Добър опит , успех следващия път.", source)
        end
    end
end)

RegisterServerEvent('whiskass:checkIfSentenced')
AddEventHandler('whiskass:checkIfSentenced', function()
    local _source = source -- cannot parse source to client trigger for some weird reason
    local identifier = GetPlayerIdentifiers(_source)[1] -- get steam identifier

    MySQL.Async.fetchAll('SELECT * FROM kotence WHERE identifier = @identifier', {
        ['@identifier'] = identifier
    }, function(result)
        if result[1] ~= nil and result[1].actions_remaining > 0 then
            --TriggerClientEvent('chat:addMessage', -1, { args = { _U('judge'), _U('jailed_msg', GetPlayerName(_source), ESX.Math.Round(result[1].jail_time / 60)) }, color = { 147, 196, 109 } })
            TriggerClientEvent('whiskass:inCommunityService', _source, tonumber(result[1].actions_remaining))
        end
    end)
end)

function releaseFromCommunityService(target)

    local identifier = GetPlayerIdentifiers(target)[1]
    MySQL.Async.fetchAll('SELECT * FROM kotence WHERE identifier = @identifier', {
        ['@identifier'] = identifier
    }, function(result)
        if result[1] then
            MySQL.Async.execute('DELETE from kotence WHERE identifier = @identifier', {
                ['@identifier'] = identifier
            })

            TriggerClientEvent('chat:addMessage', -1, { args = { _U('judge'), _U('comserv_finished', GetPlayerName(target)) }, color = { 147, 196, 109 } })
        end
    end)

    TriggerClientEvent('whiskass:prikluchiDaGalishKote', target)
end

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