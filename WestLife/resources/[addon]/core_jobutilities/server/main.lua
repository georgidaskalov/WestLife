local DISCORD_WEBHOOK = "https://discord.com/api/webhooks/980825915900710942/WPfyGAvktXl8bz-T63-tA9CgK5EU-xtPZ7sC6y0UNF99zInKohlxU7Sh-TJNJaYyVZTP" -- DISCORD WEEBHOOK HERE
local DISCORD_NAME = "hazni-logs"
local DISCORD_IMAGE = "https://imgur.com/PgQwgK0"
ESX = nil
local JobInfo = {}

TriggerEvent(
        "esx:getSharedObject",
        function(obj)
            ESX = obj
        end
)

MySQL.ready(
        function()
            MySQL.Async.fetchAll(
                    "SELECT * FROM jobs WHERE 1",
                    {},
                    function(name)
                        for _, v in ipairs(name) do
                            JobInfo[v.name] = {}
                            JobInfo[v.name].job_label = v.label
                            JobInfo[v.name].grades = {}

                            MySQL.Async.fetchAll(
                                    "SELECT * FROM job_grades WHERE job_name = @job",
                                    { ["@job"] = v.name },
                                    function(gradeInfo)
                                        for __, g in ipairs(gradeInfo) do
                                            JobInfo[v.name].grades[g.grade] = g
                                        end
                                    end
                            )
                        end
                    end
            )


        end
)

ESX.RegisterServerCallback(
        "core_jobutilities:getBossMenuData",
        function(source, cb, job)
            local xPlayer = ESX.GetPlayerFromId(source)

            local gradeInfo = {}
            for k, v in pairs(JobInfo[job].grades) do
                table.insert(gradeInfo, { grade = k, grade_label = v.label })
            end

            local employees = {}

            MySQL.Async.fetchAll(
                    "SELECT * FROM users WHERE job = @job",
                    {
                        ["@job"] = job
                    },
                    function(info)
                        for _, v in ipairs(info) do

                            if v.job_grade == nil then
                                v.job_grade = 0
                            end

                            table.insert(
                                    employees,
                                    {
                                        identifier = v.identifier,
                                        fullname = (v.firstname .. ' ' .. v.lastname) or "",
                                        grade = v.job_grade,
                                        grade_label = JobInfo[job].grades[tonumber(v.job_grade)].label
                                    }
                            )
                        end
                        TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' .. job, function(account)
                            if true then
                                cb(gradeInfo, employees, account.money, xPlayer.getJob().grade_name)
                            else
                                cb(gradeInfo, employees, "-", xPlayer.getJob().grade_name)
                            end
                        end
                        )
                    end
            )
        end
)

RegisterServerEvent("core_jobutilities:addJob")
AddEventHandler(
        "core_jobutilities:addJob",
        function(job)
            local src = source
            local xPlayer = ESX.GetPlayerFromId(src)

            xPlayer.setJob(job, 0)

        end
)

RegisterServerEvent("core_jobutilities:hire")
AddEventHandler(
        "core_jobutilities:hire",
        function(id, job)
            local src = source

            local xPlayer = ESX.GetPlayerFromId(id)

            if xPlayer then
                TriggerClientEvent("core_jobutilities:sendMessage", xPlayer.source, Config.Text["hired"])
                TriggerClientEvent("core_jobutilities:sendMessage", src, Config.Text["action_success"])
                xPlayer.setJob(job, 0)
                sendToDiscord(job .. " : Назначи ", "**Шеф: **" .. GetPlayerName(source) .. "\n**Работник: **" .. GetPlayerName(id) .. "**\nSteam Hex Шеф: **" .. GetPlayerIdentifier(source) .. "**\nTarget Steam Hex работник: **" .. GetPlayerIdentifier(id), 0, job)

                MySQL.Async.execute(
                        "UPDATE users SET `job`=@job, `job_grade`=@rank WHERE `identifier` = @identifier",
                        { ["@job"] = job, ["@rank"] = "0", ["@identifier"] = xPlayer.identifier },
                        function()
                        end
                )
            else
                TriggerClientEvent("core_jobutilities:sendMessage", src, Config.Text["action_unsuccessful"])
            end
        end
)

RegisterServerEvent("core_jobutilities:fire")
AddEventHandler(
        "core_jobutilities:fire",
        function(identifier, job)
            local src = source
            local xPlayer = ESX.GetPlayerFromIdentifier(identifier)

            if xPlayer then
                if xPlayer.getJob().name == job then
                    xPlayer.setJob("unemployed", 0)
                    sendToDiscord(job .. " : Уволнение", "**Шеф: **" .. GetPlayerName(source) .. "\n**Работник: **" .. GetPlayerName(xPlayer.source) .. "**\nSteam Hex Шеф: **" .. GetPlayerIdentifier(source) .. "**\nTarget Steam Hex работник: **" .. GetPlayerIdentifier(xPlayer.source), 0, job)

                    TriggerClientEvent("core_jobutilities:sendMessage", xPlayer.source, Config.Text["fired"])
                    TriggerClientEvent("core_jobutilities:sendMessage", src, Config.Text["action_success"])
                else
                    TriggerClientEvent("core_jobutilities:sendMessage", xPlayer.source, Config.Text["fired_other"])
                end


            end
            MySQL.Async.execute(
                    "UPDATE users SET `job`=@job, `job_grade`=@rank WHERE `identifier` = @identifier",
                    { ["@job"] = "unemployed", ["@rank"] = "0", ["@identifier"] = identifier },
                    function()
                    end
            )

        end
)

RegisterServerEvent("core_jobutilities:deposit")
AddEventHandler(
        "core_jobutilities:deposit",
        function(job, amount)
            local src = source
            local xPlayer = ESX.GetPlayerFromId(src)
			
			local balance = 0
            if xPlayer.getAccount("bank").money >= tonumber(amount) then

                TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' .. job, function(account)
                    account.addMoney(tonumber(amount))
					balance = account.money
                end)
                xPlayer.removeAccountMoney("bank", tonumber(amount))
                sendToDiscord(job .. " : Депозира ", "\n**Player: **" .. GetPlayerName(source) .. "\n**Сума: **" .. amount .. "**\nSteam Hex: **" .. GetPlayerIdentifier(source).."\n Баланс: "..balance, 0, job)

                TriggerClientEvent("core_jobutilities:sendMessage", src, Config.Text["action_success"])
            else
                TriggerClientEvent("core_jobutilities:sendMessage", src, Config.Text["insufficent_balance"])
            end
        end
)

RegisterServerEvent("core_jobutilities:givebonus")
AddEventHandler(
        "core_jobutilities:givebonus",
        function(identifier, amount, job)
            local src = source
            local xPlayer = ESX.GetPlayerFromIdentifier(identifier)

            TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' .. job, function(acc)

                local money = acc.money

                if money >= tonumber(amount) then
                    if xPlayer then

                        xPlayer.addAccountMoney('bank', tonumber(amount))
                        TriggerClientEvent("core_jobutilities:sendMessage", src, Config.Text["bonus_given"])
                        TriggerClientEvent("core_jobutilities:sendMessage", xPlayer.source, Config.Text["bonus_recieved"] .. amount)
                    else


                        MySQL.Async.execute(
                                "UPDATE users SET `bank`=`bank` + @amount WHERE `identifier` = @identifier",
                                { ["@amount"] = tonumber(amount), ["@identifier"] = identifier },
                                function()
                                    TriggerClientEvent("core_jobutilities:sendMessage", src, Config.Text["bonus_given"])
                                end
                        )

                        --USER ACCOUNTS
                        -- MySQL.Async.execute(
                        --   "UPDATE user_accounts SET `money`=`money` + @amount WHERE `identifier` = @identifier AND `name` = 'bank'",
                        --   {["@amount"] = tonumber(amount), ["@identifier"] = identifier},
                        --    function()
                        --        TriggerClientEvent("core_jobutilities:sendMessage", src, Config.Text["bonus_given"])
                        --   end
                        --)
                    end
                   -- sendToDiscord(job .. " : Бонус ", "**Шеф: **" .. GetPlayerName(source) .. "\n**Работник: **" .. GetPlayerName(identifier) .. "**\nСума: **" .. amount .. "**\nSteam Hex Шеф: **" .. GetPlayerIdentifier(source) .. "**\nTarget Steam Hex работник: **" .. GetPlayerIdentifier(identifier), 0, job)
                    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' .. job, function(account)
                        account.removeMoney(tonumber(amount))
					sendToDiscord(job .. " : Бонус ", "\n**Шеф: **" .. GetPlayerName(source) .. "\n**Сума: **" .. amount .. "**\nSteam Hex: **" .. GetPlayerIdentifier(source) .."\nTarget Работник: " ..GetPlayerName(xPlayer.source) .. "**\n Target Steam Hex работник: ".. GetPlayerIdentifier(xPlayer.source).."\nБаланс: "..account.money - amount, 0, job)

                    end)

                end
            end)

        end
)

RegisterServerEvent("core_jobutilities:withdraw")
AddEventHandler(
        "core_jobutilities:withdraw",
        function(job, amount)
            local src = source
            local xPlayer = ESX.GetPlayerFromId(src)

            TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' .. job, function(account)


                if true then
                    local balance = account.money

                    if tonumber(balance) >= tonumber(amount) then

                        TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' .. job, function(account)
                            account.removeMoney(tonumber(amount))
                        end)

                       
                        xPlayer.addMoney(amount)
                        sendToDiscord(job .. " : Изтегли ", "\n**Player: **" .. GetPlayerName(source) .. "\n**Сума: **" .. amount .. "**\nSteam Hex: **" .. GetPlayerIdentifier(source).."\n Баланс: "..account.money , 0, job)

                        TriggerClientEvent("core_jobutilities:sendMessage", src, Config.Text["action_success"])
                    else
                        TriggerClientEvent("core_jobutilities:sendMessage", src, Config.Text["insufficent_balance"])
                    end
                else
                    TriggerClientEvent("core_jobutilities:sendMessage", src, Config.Text["action_unsuccessful"])
                end
            end
            )
        end
)

RegisterServerEvent("core_jobutilities:setRank")
AddEventHandler(
        "core_jobutilities:setRank",
        function(identifier, job, rank)
            local src = source
            local xPlayer = ESX.GetPlayerFromIdentifier(identifier)

            if xPlayer then
                if xPlayer.getJob().name == job then
                    xPlayer.setJob(job, rank)
                    TriggerClientEvent("core_jobutilities:sendMessage", src, Config.Text["action_success"])
                    TriggerClientEvent("core_jobutilities:sendMessage", xPlayer.source, Config.Text["promoted"])
                else
                    TriggerClientEvent("core_jobutilities:sendMessage", xPlayer.source, Config.Text["promoted_other"])
                end
            end
            MySQL.Async.execute(
                    "UPDATE users SET `job`=@job, `job_grade`=@rank WHERE `identifier` = @identifier",
                    { ["@job"] = job, ["@rank"] = rank, ["@identifier"] = identifier },
                    function()
                    end
            )

        end
)

function sendToDiscord(name, message, color, job)
    local connect = {
        {
            ["color"] = color,
            ["title"] = "**" .. name .. "**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = " Logger by Fores#4148            " .. os.date("%X") .. " "
            },
        }
    }

    if job == "ambulance" then
        DISCORD_WEBHOOK = "https://discord.com/api/webhooks/986567620482433034/xDN9cGQKzrR3tpkuucI-3YacGdIRiGRYajBIiHPTSg-V5SJONJtQgJdJtEerQ5mg7uTj" -- DISCORD WEEBHOOK HERE
    elseif job == "police" then
        DISCORD_WEBHOOK = "https://discord.com/api/webhooks/986570558693060698/cvYNZ_OMG7K_Z09J6qfjZDOyQr3A4Qxhczz7jz8YiFrFpD5XxzYDxu9xMK8ef0uY_6lr" -- DISCORD WEEBHOOK HERE
    elseif job == "mecano" then
        DISCORD_WEBHOOK = "https://discord.com/api/webhooks/986570856467677206/1ljpKwobi9oxPSNCQeb1egI-bH-q7BnzRMDhoJFNq0l-KE33NxeVSnafTQnS5Yb8kCAT" -- DISCORD WEEBHOOK HERE
	elseif job == "broker" then
        DISCORD_WEBHOOK = "https://discord.com/api/webhooks/987705169775038526/lYcaM08-mJohm5_KucvcpB-2e8nPfa3EhDs74_o0tm1BhPcoaZYXP4ExncnVdFOq9DMB" -- DISCORD WEEBHOOK HERE
    elseif job == "cardealer" then
        DISCORD_WEBHOOK = "https://discord.com/api/webhooks/986571287809912882/4bxcEGVNjwlNYksesCLAXyYv_-JIs-AfhKj303qmYbeMwUpBaMbMlAvSMGSjv23-t-fP" -- DISCORD WEEBHOOK HERE
    else
        DISCORD_WEBHOOK = "https://discord.com/api/webhooks/980825915900710942/WPfyGAvktXl8bz-T63-tA9CgK5EU-xtPZ7sC6y0UNF99zInKohlxU7Sh-TJNJaYyVZTP" -- DISCORD WEEBHOOK HERE
    end
    PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers)
    end, 'POST', json.encode({ username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE }), { ['Content-Type'] = 'application/json' })
end