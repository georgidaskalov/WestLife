local authoriseID = 'Love U Tiger | ilAn#0393'

RegisterServerEvent('t1ger_truckrobbery:SyncDataSV')
AddEventHandler('t1ger_truckrobbery:SyncDataSV',function(data)
    TriggerClientEvent('t1ger_truckrobbery:SyncDataCL',-1,data)
end)

-- Do not touch these 3 functions:
function RemoveCooldownTimer(source)
    for k,v in pairs(jobCooldown) do
        if v.cooldown == source then
            table.remove(jobCooldown,k)
        end
    end
end
function GetCooldownTimer(source)
    for k,v in pairs(jobCooldown) do
        if v.cooldown == source then
            return math.ceil(v.time/60000)
        end
    end
end
function CheckCooldownTimer(source)
    for k,v in pairs(jobCooldown) do
        if v.cooldown == source then
            return true
        end
    end
    return false
end

RegisterServerEvent('loaf_test:getAccess')
AddEventHandler('loaf_test:getAccess', function()
    local src = source
    TriggerClientEvent('loaf_test:setAccess', src, true)
end)
