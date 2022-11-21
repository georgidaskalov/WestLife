CreateThread(function()
    if Config.Framework ~= "esx" then return end
    local ESX
    TriggerEvent("esx:getSharedObject", function(obj) 
        ESX = obj 
    end)

    function Notify(source, message)
        TriggerClientEvent("esx:showNotification", source, message)
    end
    
    function GetIdentifier(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        if not xPlayer then return false end
        return xPlayer.identifier
    end

    function GetIngameName(source)
        local xPlayer = ESX.GetPlayerFromId(source)
		local result = MySQL.Sync.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		})

		local firstname = result[1].firstname
		local lastname  = result[1].lastname
        return firstname .. " " .. lastname
		--return xPlayer.get("firstName")  .. " " .. xPlayer.get("lastName")
    end

    function GetSourceByIdentifier(identifier)
        local xPlayer = ESX.GetPlayerFromIdentifier(identifier)
        if xPlayer then return 
            xPlayer.source
        end
        return false
    end

    -- BACKWARDS COMPATIBILITY
    -- PLEASE DO NOT USE
    ESX.RegisterServerCallback("loaf_keysystem:getKeys", function(source, cb)
        cb(GetKeys(source))
    end)
    
    loaded = true
end)