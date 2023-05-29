#declare objective racoonia.math
#declare entity permaHaste
#declare entity input1

scoreboard players add permaHaste racooniaserver.settingValue 1
scoreboard players set input1 racoonia.math 3
scoreboard players operation permaHaste racooniaserver.settingValue %= input1 racoonia.math
execute if score permaHaste racooniaserver.settingValue matches 2 run tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] ["",{"text":"Permanent haste for all! ","color":"dark_green"},{"text":">","color":"dark_gray"},{"text":"Click to change","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/perma_haste"}},{"text":"<","color":"dark_gray"}]
execute if score permaHaste racooniaserver.settingValue matches 1 run tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] ["",{"text":"Permanent haste for all with tag [racooniaserver.permaHaste] ","color":"dark_green"},{"text":">","color":"dark_gray"},{"text":"Click to change","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/perma_haste"}},{"text":"<","color":"dark_gray"}]
execute if score permaHaste racooniaserver.settingValue matches 0 run tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] ["",{"text":"Permanent haste disabled! ","color":"red"},{"text":">","color":"dark_gray"},{"text":"Click to enable","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/perma_haste"}},{"text":"<","color":"dark_gray"}]
