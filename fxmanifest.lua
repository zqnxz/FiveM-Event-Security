fx_version "cerulean"
game "gta5"

-- removing these credits is really GAY
author "qnx"
description "Free & Open Source by discord.gg/luasec"

exports {
    "TriggerSecuredServerEvent",
    "getId"
}
shared_scripts {
    "shared/**/*.lua"
}
client_scripts {
    "client/**/*.lua"
}
server_scripts {
    "server/**/*.lua"
}
server_exports {
    "canExecuteEvent"
}
