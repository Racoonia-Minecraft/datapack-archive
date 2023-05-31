#declare storage racoonia input
#declare function racooniacore:replace_hand_from_storage

data modify storage racoonia input set from entity @s[tag=!global.ignore] SelectedItem
data remove storage racoonia input.tag.CustomModelData
function racooniacore:replace_hand_from_storage
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] {"text": "CustomModelData removed!", "color": "green"}
