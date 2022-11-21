fx_version 'adamant'
game 'gta5'

description 'ARPF-EMS by Peter Greek (Xerxes468893) made for BCDOJRP, Released to the Public' --DO NOT REMOVE
description 'Modifier par Baby©️ pour Black_Diamond_Rp©️ .Editer en Version ESX, Released to the Public' --DO NOT REMOVE
description 'Edit by Baby© ️ for Black_Diamond_Rp©. Edit Version ESX, Released to the Public' --DO NOT REMOVE

client_scripts {
  'ems.lua'
}

server_scripts {
  'server.lua'
}


----Véhicle ems----

dependencies {
	'mpvinewood'
}
files {
	'ems_car/data/vehicles.meta',
	'ems_car/data/carvariations.meta',
	'ems_car/data/carcols.meta',
	'ems_car/data/handling.meta',
}

data_file 'VEHICLE_METADATA_FILE' 'ems_car/data/vehicles.meta'
data_file 'CARCOLS_FILE' 'ems_car/data/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'ems_car/data/carvariations.meta'
data_file 'HANDLING_FILE' 'ems_car/handling.meta'
