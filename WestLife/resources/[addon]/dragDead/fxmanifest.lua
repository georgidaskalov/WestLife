fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'Pingouin#8843'
description 'Dead ped dragging for FiveM'
version '1.0.1'

-- Escrow system

escrow_ignore {
	'config.lua',
}

-- Client

client_scripts {
    'client.lua',
	'config.lua',
}

-- Server

server_scripts {
    'server.lua',
}
dependency '/assetpacks'