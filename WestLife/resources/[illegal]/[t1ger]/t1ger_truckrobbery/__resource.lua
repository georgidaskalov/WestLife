-------------------------------------
------- Created by T1GER#9080 -------
------------------------------------- 

resource_manifest_version "05cfa83c-a124-4cfa-a768-c24a5811d8f9"

description 'T1GER Truck Robbery'

author 'T1GER#9080'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'language.lua',
	'config.lua',
	'server/server.lua',
	'server/protection_sv.lua',
}

client_scripts {
	'language.lua',
	'config.lua',
	'client/client.lua',
	'client/utils.lua',
	'client/protection_cl.lua',
}
