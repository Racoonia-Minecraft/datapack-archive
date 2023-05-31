#declare storage racoonia input
#declare function racooniacore:replace_hand_from_storage

data modify storage racoonia input set from entity @s[tag=!global.ignore] SelectedItem
execute store result storage racoonia input.tag.CustomModelData int 1 run scoreboard players get @s customModelData
function racooniacore:replace_hand_from_storage
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] ["", {"text": "CustomModelData set to ", "color": "green"}, {"score":{"name":"@s","objective":"customModelData"}, "color": "yellow"}]
