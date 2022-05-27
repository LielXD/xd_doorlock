-- XD_Doorlock | Creator: LielXD --

fx_version 'cerulean'

game 'gta5'

author 'LielXD'
description 'XD_Doorlock for ESX'
version 'Legacy'

client_scripts {
	'@es_extended/imports.lua',
    'config.lua',
    'client/*.lua'
}

server_scripts {
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/imports.lua',
    'config.lua',
    'server/*.lua'
}

dependencies {
	'es_extended'
}