#declare storage racoonia:core
#declare function racooniacore:replace_hand_from_storage

data modify storage racoonia:core input set from entity @s[tag=!global.ignore] SelectedItem
execute store result storage racoonia:core input.tag.CustomModelData int 1 run scoreboard players get @s customModelData
execute at @s run function racooniacore:replace_hand_from_storage
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] ["", {"text": "CustomModelData set to ", "color": "green"}, {"score":{"name":"@s","objective":"customModelData"}, "color": "yellow"}]
