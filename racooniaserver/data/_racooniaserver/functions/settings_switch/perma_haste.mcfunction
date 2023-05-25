#declare objective racoonia.math
#declare entity permaHaste
#declare entity input1

scoreboard players add permaHaste racoonia.settingValue 1
scoreboard players set input1 racoonia.math 3
scoreboard players operation permaHaste racoonia.settingValue %= input1 racoonia.math
execute if score permaHaste racoonia.settingValue matches 2 run tellraw @s ["",{"text":"Permanent haste for all! ","color":"dark_green"},{"text":">","color":"dark_gray"},{"text":"Click to change","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/perma_haste"}},{"text":"<","color":"dark_gray"}]
execute if score permaHaste racoonia.settingValue matches 1 run tellraw @s ["",{"text":"Permanent haste for all with tag [racoonia.permaHaste] ","color":"dark_green"},{"text":">","color":"dark_gray"},{"text":"Click to change","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/perma_haste"}},{"text":"<","color":"dark_gray"}]
execute if score permaHaste racoonia.settingValue matches 0 run tellraw @s ["",{"text":"Permanent haste disabled! ","color":"red"},{"text":">","color":"dark_gray"},{"text":"Click to enable","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/perma_haste"}},{"text":"<","color":"dark_gray"}]
