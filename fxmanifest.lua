fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Catblury'
description 'Catblury Presents Discord Wrapper'
version '1.0.7'

client_scripts {
  'client/*.lua'
}

server_scripts {
  'config.lua',
  'server/*.lua'
}

shared_script {
  '@ox_lib/init.lua'
}

dependencies {
  'ox_lib'
}

escrow_ignore {
  'config.lua',
  'adaptiveCard.json',
}