Config = {}

Config.StatusMax        = 600
Config.TickTime         = 1000
Config.TickTimeHurry    = 250
Config.UpdateInterval   = 10000
Config.Style            = 'vertical'

Config.vehicle = {
	speedUnit = 'KMH',
	maxSpeed = 450, 

	seatbelt = {
		playBuckleSound 	= true,
		playUnbuckleSound 	= true,
		playUnsafeSound 	= false
	},

	keys = {
		seatbelt 	= 20,
		cruiser		= 20,
		signalLeft	= 174,
		signalRight	= 175,
		signalBoth	= 173,
	}
}

-- Amount of Time to Blackout, in milliseconds
-- 2000 = 2 seconds
Config.BlackoutTime = 2000

-- Enable blacking out due to vehicle damage
-- If a vehicle suffers an impact greater than the specified value, the player blacks out
Config.BlackoutFromDamage = false
Config.BlackoutDamageRequired = 10000

-- Enable blacking out due to speed deceleration
-- If a vehicle slows down rapidly over this threshold, the player blacks out
Config.BlackoutFromSpeed = false
Config.BlackoutSpeedRequired = 8000 -- Speed in KPH

-- Enable the disabling of controls if the player is blacked out
Config.DisableControlsOnBlackout = false