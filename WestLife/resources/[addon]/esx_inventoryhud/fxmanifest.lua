fx_version 'adamant'
games { 'rdr3', 'gta5' }
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

description 'By h1co4913 & Hqkumaru & Eotix malkiq'

version 'orginalno dale'

ui_page 'html/ui.html'

client_scripts {
  "@es_extended/locale.lua",
  "client/main.lua",
  "client/trunk.lua",
  "client/property.lua",
  "client/glovebox.lua",
  "client/player.lua",
  "client/vault.lua",
  "client/shop.lua",
  "client/stash.lua",
  "client/gang.lua",
  "locales/cs.lua",
  "locales/en.lua",
  "locales/fr.lua",
  "config.lua"
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  '@es_extended/locale.lua',
  'server/main.lua',
  'locales/cs.lua',
  'locales/en.lua',
  'locales/fr.lua',
  'config.lua'	
}

files {
    'html/ui.html',
    'html/css/ui.css',
    'html/css/jquery-ui.css',
    'html/js/inventory.js',
    'html/js/config.js',
    -- JS LOCALES
    'html/locales/cs.js',
    'html/locales/en.js',
    'html/locales/fr.js',
    -- IMAGES

    'html/img/*.png',

    -- ICONS

    'html/img/items/*.png', 
}
