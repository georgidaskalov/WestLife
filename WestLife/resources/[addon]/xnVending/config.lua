-----------------------------------------------------------------------------------------
-- Note you can only have a max of 9 items per vending machine anymore and it'll break --
-----------------------------------------------------------------------------------------

Config = {}

-----------------------------------------------------------------------------------------
--                    Select the framework used by your server                         --
-----------------------------------------------------------------------------------------

--[[ ESX Compatibility ]]
Config.Framework = "ESX"
--[[ New ESX Compatibility, for latest versions of ESX ]]
-- Config.Framework = "NewESX"
--[[ vRP (0.5) Compatibility (Dunko uses this) ]]
-- Config.Framework = "vRP"
--[[ No framework, no economy required (never denies the user an item) ]]
-- Config.Framework = "Standalone"

Config.DispenseDict = {"mini@sprunk", "plyr_buy_drink_pt1"}
Config.PocketAnims = {"mp_common_miss", "put_away_coke"}

Config.Machines = {
	[`prop_vend_soda_01`] = {			-- machine model
		item =  {"cola"}, 				-- Database item names
		name =  {"Кока Кола"}, 			-- Friendly display names
		prop =  {`prop_ecola_can`}, 	-- Props to spawn falling in machine
		price = {55}						-- Purchase prices
	},
	[`prop_vend_soda_02`] = {
		item = {"fanta"},
		name = {"Фанта"},
		prop = {`prop_ld_can_01`},
		price = {35}
	},
	[`prop_vend_snak_01`] = {
		item = {"chips", "sandwich"},
		name = {"Чипс", "Сандвич"},
		prop = {`prop_candy_pqs`, `v_ret_ml_chips3`},
		price = {40, 85}
	}
}

-----------------------------------------------------------------------------------------
-- 			 Don't change this below, it'll just break the whole script				   --
-----------------------------------------------------------------------------------------

Config.PurchaseButtons = {
	-- [Keyboard Key] = Key Index
	[1] = 38,
	[2] = 20,
	[3] = 160,
	[4] = 164,
	[5] = 165,
	[6] = 159,
	[7] = 161,
	[8] = 162,
	[9] = 163
}
