fx_version 'adamant'
game 'gta5'
lua54 'yes'


Owner "Rxm"
shared_scripts {
    '@ox_lib/init.lua',
    'shared/***',
}

client_scripts {
    '@es_extended/locale.lua',
    'client/***',
}

server_scripts {
    'server/***',
    "@mysql-async/lib/MySQL.lua",
}

escrow_ignore {
    'shared/config.lua',
}

shared_scripts '@es_extended/imports.lua'
