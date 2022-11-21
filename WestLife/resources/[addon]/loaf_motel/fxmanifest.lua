fx_version "adamant"
game "gta5"
-- Leaked By: Leaking Hub | J. Snow | leakinghub.com
shared_script "config/*.lua"
client_script "client/*.lua"
server_script {
    "@mysql-async/lib/MySQL.lua",
    "server/*.lua"
}
-- Leaked By: Leaking Hub | J. Snow | leakinghub.com
dependency {
    "loaf_keysystem", 
    "mythic_interiors",
    "esx_addoninventory",
    "esx_datastore"
}

-- Motel script by Loaf Scripts#7785