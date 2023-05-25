#declare objective racoonia.math
#declare entity blockEnd
#declare entity two

scoreboard players add blockEnd racoonia.settingValue 1
scoreboard players operation blockEnd racoonia.settingValue %= two racoonia.math
execute if score blockEnd racoonia.settingValue matches 0 run tellraw @s ["",{"text":"End is now open! ","color":"dark_green"},{"text":">","color":"dark_gray"},{"text":"Click to close","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/ban_end"}},{"text":"<","color":"dark_gray"}]
execute if score blockEnd racoonia.settingValue matches 1 run tellraw @s ["",{"text":"End is now closed! ","color":"red"},{"text":">","color":"dark_gray"},{"text":"Click to open","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/ban_end"}},{"text":"<","color":"dark_gray"}]
