#declare storage racoonia input
#declare function racooniacore:replace_hand_from_storage

data modify storage racoonia input set from entity @s SelectedItem
data remove storage racoonia input.tag.CustomModelData
function racooniacore:replace_hand_from_storage
tellraw @s {"text": "CustomModelData removed!", "color": "green"}
