#declare storage racoonia:core
#declare function racooniacore:replace_hand_from_storage

data modify storage racoonia:core input set from entity @s[tag=!global.ignore] SelectedItem
data remove storage racoonia:core input.tag.CustomModelData
execute at @s run function racooniacore:replace_hand_from_storage
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] {"text": "CustomModelData removed!", "color": "green"}
