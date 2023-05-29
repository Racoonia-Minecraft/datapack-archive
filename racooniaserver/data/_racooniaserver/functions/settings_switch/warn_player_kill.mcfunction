#declare objective racoonia.math
#declare entity warnPlayerKill
#declare entity two

scoreboard players add warnPlayerKill racooniaserver.settingValue 1
scoreboard players operation warnPlayerKill racooniaserver.settingValue %= two racoonia.math
execute if score warnPlayerKill racooniaserver.settingValue matches 0 run tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] ["",{"text":"Playerkill warning disabled! ","color":"red"},{"text":">","color":"dark_gray"},{"text":"Click to enable","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/warn_player_kill"}},{"text":"<","color":"dark_gray"}]
execute if score warnPlayerKill racooniaserver.settingValue matches 1 run tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] ["",{"text":"Playerkill warning enabled! ","color":"dark_green"},{"text":">","color":"dark_gray"},{"text":"Click to disable","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/warn_player_kill"}},{"text":"<","color":"dark_gray"}]
