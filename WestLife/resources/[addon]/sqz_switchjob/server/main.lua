ESX = nil
local webhook = 'PUT YOUR WEBHOOK HERE' -- Change it to your likings :)
local allowedAdminGroups = {
    ['superadmin'] = true,
    ['admin'] = true
    -- Here you can add more groups which will be allowed to you /setjob2 command, co not forget to add comma
}


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('sqz_switchjob:getSecondJob')
AddEventHandler('sqz_switchjob:getSecondJob', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    MySQL.Async.fetchAll('SELECT secondjob, secondjob_grade FROM users WHERE identifier = @identifier', { ['@identifier'] = xPlayer.getIdentifier() }, function(result)

        if result[1] ~= nil and result[1].secondjob ~= nil and result[1].secondjob_grade ~= nil then
                TriggerClientEvent('sqz_switchjob:returnSecondJob', _source, result[1].secondjob, result[1].secondjob_grade)
        else
            xPlayer.showNotification('Имаше проблем ,докато зареждахме 2рата ти работа от Датабазата')
        end
    end)
end)

RegisterServerEvent('sqz_switchjob:setSecondJob')
AddEventHandler('sqz_switchjob:setSecondJob', function(job1, job1_grade, job2, job2_grade)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    MySQL.Async.fetchAll('SELECT secondjob, secondjob_grade FROM users WHERE identifier = @identifier', { ['@identifier'] = xPlayer.getIdentifier() }, function(result)

        if result[1] ~= nil then
            if result[1].secondjob == job2 and result[1].secondjob_grade == job2_grade then
                xPlayer.setJob(job2, job2_grade)

                MySQL.Async.execute('UPDATE users SET secondjob = @secondjob, secondjob_grade = @secondjob_grade WHERE identifier = @identifier',
                    { 
                        ['@secondjob'] = job1,
                        ['@secondjob_grade'] = job1_grade,
                        ['@identifier'] = xPlayer.getIdentifier(),
                    },
                    function(affectedRows)
                        if affectedRows == 0 then
                            print('Играч с стийм ID: '..xPlayer.getIdentifier()..' имаше проблем , докато запазваше 2рата си работа.')
                        end
                    end
                )  
            
                SendDiscordWebhook(_source, job1, job1_grade, job2, job2_grade, 255)
            else
                print('Player with identifier '..xPlayer.identifier..' is most 99% cheater.')
                DropPlayer(_source, 'Cheater, setting job event abuse')
            end
        else
            print('Играч с ID '..xPlayer.identifier..' имаше проблем докато сменяваше работата си (най-вероятно има мод меню)')
        end
    end)

end)

function SendDiscordWebhook(source, job1, job1_grade, job2, job2_grade, color)
    local xPlayer = ESX.GetPlayerFromId(source)
		local connect = {
			  {
				  ["color"] = color,
				  ["title"] = GetPlayerName(source)..', SteamID: '..xPlayer.getIdentifier(), -- Maybye it us better to replace by xPlayer.getIdentifier() ,  I don't know :D Change by yourself, if you want
				  ["description"] = 'This player has changed his job **FROM**: '..job1..' with grade: '..job1_grade..' **TO**: '..job2.. ' with grade '..job2_grade,
				  ["footer"] = {
					  ["text"] = 'sqz_switchjob, job change using command /changejob '..os.date("%Y/%m/%d %X"),
				  },
			  }
		  }
	PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({embeds = connect}), { ['Content-Type'] = 'application/json' })
end

RegisterCommand("setjob2", function(source, args, rawCommand)
    
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if allowedAdminGroups[xPlayer.getGroup()] then

        if not args[1] or not args[2] or not args[3] then
            xPlayer.showNotification('You are missing args to set job')
        else
            local tPlayer = ESX.GetPlayerFromId(tonumber(args[1])) -- Tonumber in case somebody adds a paramter as a string, not a number
            if not tPlayer then
                xPlayer.showNotification('The ID is not online on the server')
            else
                if ESX.DoesJobExist(args[2], tonumber(args[3])) then
                    MySQL.Async.execute('UPDATE users SET secondjob = @secondjob, secondjob_grade = @secondjob_grade WHERE identifier = @identifier',
                        { 
                            ['@secondjob'] = args[2],
                            ['@secondjob_grade'] = tonumber(args[3]),
                            ['@identifier'] = tPlayer.getIdentifier(),
                        },
                            function(affectedRows)
                                if affectedRows == 0 then
                                    xPlayer.showNotification('There were some issues with changing the second job, please try it again')
                                    print('Играч с стийм ID: '..xPlayer.getIdentifier()..' имаше проблем , докато сетваше друг играч')
                                end
                            end
                    )
                else
                    xPlayer.showNotification('Въведената работа не съществува')
                end

            end
        end


    else
        xPlayer.showNotification('Тази команда не ти е позволена , не си админ.')
    end
    
end, false)