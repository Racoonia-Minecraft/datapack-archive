#declare storage racoonia input
#declare function racooniacore:replace_hand_from_storage

data modify storage racoonia input set from entity @s SelectedItem
execute store result storage racoonia input.tag.CustomModelData int 1 run scoreboard players get @s customModelData
function racooniacore:replace_hand_from_storage
tellraw @s ["", {"text": "CustomModelData set to ", "color": "green"}, {"score":{"name":"@s","objective":"customModelData"}, "color": "yellow"}]
