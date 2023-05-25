#declare objective racoonia.math
#declare entity warnPlayerKill
#declare entity two

scoreboard players add warnPlayerKill racoonia.settingValue 1
scoreboard players operation warnPlayerKill racoonia.settingValue %= two racoonia.math
execute if score warnPlayerKill racoonia.settingValue matches 0 run tellraw @s ["",{"text":"Playerkill warning disabled! ","color":"red"},{"text":">","color":"dark_gray"},{"text":"Click to enable","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/warn_player_kill"}},{"text":"<","color":"dark_gray"}]
execute if score warnPlayerKill racoonia.settingValue matches 1 run tellraw @s ["",{"text":"Playerkill warning enabled! ","color":"dark_green"},{"text":">","color":"dark_gray"},{"text":"Click to disable","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/warn_player_kill"}},{"text":"<","color":"dark_gray"}]
