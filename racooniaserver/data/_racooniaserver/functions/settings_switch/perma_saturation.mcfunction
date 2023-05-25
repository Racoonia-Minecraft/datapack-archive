#declare objective racoonia.math
#declare entity permaSaturation
#declare entity input1

scoreboard players add permaSaturation racoonia.settingValue 1
scoreboard players set input1 racoonia.math 3
scoreboard players operation permaSaturation racoonia.settingValue %= input1 racoonia.math
execute if score permaSaturation racoonia.settingValue matches 2 run tellraw @s ["",{"text":"Permanent saturation for all! ","color":"dark_green"},{"text":">","color":"dark_gray"},{"text":"Click to change","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/perma_saturation"}},{"text":"<","color":"dark_gray"}]
execute if score permaSaturation racoonia.settingValue matches 1 run tellraw @s ["",{"text":"Permanent saturation for all with tag [racoonia.permaSaturation] ","color":"dark_green"},{"text":">","color":"dark_gray"},{"text":"Click to change","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/perma_saturation"}},{"text":"<","color":"dark_gray"}]
execute if score permaSaturation racoonia.settingValue matches 0 run tellraw @s ["",{"text":"Permanent saturation disabled! ","color":"red"},{"text":">","color":"dark_gray"},{"text":"Click to enable","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/perma_saturation"}},{"text":"<","color":"dark_gray"}]
