Config = {}


Config.UseESX = true						-- Use ESX Framework
Config.UseQBCore = false					-- Use QBCore Framework (Ignored if Config.UseESX = true)

Config.UseCustomNotify = false				-- Use a custom notification script, must complete event below.

-- Only complete this event if Config.UseCustomNotify is true; mythic_notification provided as an example
RegisterNetEvent('angelicxs-flipcar:CustomNotify')
AddEventHandler('angelicxs-flipcar:CustomNotify', function(message, type)
    --exports.mythic_notify:SendAlert(type, message, 4000)
end)

Config.TimetoFlip = 1 						-- How long, in seconds, to flip the car.

Config.Jobs = {								-- List of permitted jobs; leave empty table for to allow all.
}

-- Visual Preference
Config.UseThirdEye = false 					-- Enables using a third eye (depending on version will need to update export to target all vehicles)
Config.ThirdEyeName = 'q-target' 			-- Name of third eye aplication
Config.UseChatCommand = true                -- Enables using chat command to flip vehicle. Must be true if Config.UseThirdEye=false.
Config.ChatCommand = 'flip'              -- When Config.UseChatCommand = true, is the phrase used to flip vehicle.
Config.ChatCommand2 = 'ball'              -- When Config.UseChatCommand = true, is the phrase used to flip vehicle.


-- Language Configuration
Config.LangType = {
	['error'] = 'error',
	['success'] = 'success',
	['info'] = 'inform'
}

Config.Lang = {
	['flipped'] = 'You have flipped the vehicle!',
    ['in_vehicle'] = 'You can not flip the vehicle from inside!',
    ['far_away'] = 'You are not close enough flip the vehicle!',
    ['not_allowed'] = 'You don\'t have the training or tools to flip a vehicle!',
}
