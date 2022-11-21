-----------------
-- Config file --
-----------------

cfg = {}

-- Minimal damage to be inujured on the ground

cfg.damage = 30

-- Amount of life given back when the player receive first aid

cfg.recover = 30

-- Maximum time you will be on the ground, after this time, you can move again (time in ms)

cfg.maxTime = 240000 -- Equals to 4 minutes

-- Say if the script work for dead people too instead of only for injured people

cfg.dead = true

-- This configuration will help you to disable some controls with an event 
-- Add a event listener in your client scripts that needs some disabled controls while the body is dragged like this :
--[[

AddEventHandler("dragDead:disable", function(boolean)
    DisableControlAction(0, 140, boolean) -- Controls to disable
end)
]]

cfg.noX = false


-- Use this event in your ambulance job to revive a player correctly --

-- TriggerEvent('dragDead:client:revive') (Client side)
-- TriggerClientEvent('dragDead:client:revive', playerIdToReviveHere) (Server side)

-------------------- Keybinds -----------------------

-- Key to press to drag a player.
-- Key "E" (38) by default
-- Site listing controls: https://docs.fivem.net/docs/game-references/controls/#controls
-- KEY NUMBER = INDEX COLUMN

cfg.key = 38

-- Name of the key to press to drag a player
-- ~INPUT_CONTEXT~ ("E" key) by default
-- Site listing control names: https://docs.fivem.net/docs/game-references/controls/#controls
-- KEY NAME = NAME COLUMN

cfg.keyName = '~INPUT_CONTEXT~'

-- Key to press to give first aid to a player.
-- Key "X" (73) by default
-- Site listing controls: https://docs.fivem.net/docs/game-references/controls/#controls
-- KEY NUMBER = INDEX COLUMN

cfg.key2 = 73

-- Name of the Key to press to give first aid to a player.
-- ~INPUT_VEH_DUCK~ ("X" key) by default
-- Site listing control names: https://docs.fivem.net/docs/game-references/controls/#controls
-- KEY NAME = NAME COLUMN

cfg.keyName2 = '~INPUT_VEH_DUCK~'

------------------ Languages ---------------------

cfg.lang = {
    press = "Натисни",
    drag = "за да влачиш",
    firstAid = "първа помощ",
    release = "да оставиш човека",
    info = "Ако никой не ти помогне до 4 минути, ще можеш да се движиш отново",
}