fx_version 'cerulean'
game "gta5"

author "Paradise Scripts"
version '1.0.0'
description 'Anti Resolution'


client_script 'scripting/client.lua'
server_script 'scripting/server.lua'
shared_script {
    'config.lua',
    '@ox_lib/init.lua',
}

dependencies {
    'ox_lib'
}

lua54 'yes'