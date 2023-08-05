execute as @s[nbt={Item: {tag: {phantomwings: {type: 1b}}}}] run function _phantomwings:split/chestplate/leather
execute as @s[nbt={Item: {tag: {phantomwings: {type: 2b}}}}] run function _phantomwings:split/chestplate/gold
execute as @s[nbt={Item: {tag: {phantomwings: {type: 3b}}}}] run function _phantomwings:split/chestplate/chainmail
execute as @s[nbt={Item: {tag: {phantomwings: {type: 4b}}}}] run function _phantomwings:split/chestplate/iron
execute as @s[nbt={Item: {tag: {phantomwings: {type: 5b}}}}] run function _phantomwings:split/chestplate/diamond
execute as @s[nbt={Item: {tag: {phantomwings: {type: 6b}}}}] run function _phantomwings:split/chestplate/netherite
execute as @s[nbt={Item: {tag: {phantomwings: {type: 11b}}}}] run function _phantomwings:split/helmet/leather
execute as @s[nbt={Item: {tag: {phantomwings: {type: 12b}}}}] run function _phantomwings:split/helmet/gold
execute as @s[nbt={Item: {tag: {phantomwings: {type: 13b}}}}] run function _phantomwings:split/helmet/chainmail
execute as @s[nbt={Item: {tag: {phantomwings: {type: 14b}}}}] run function _phantomwings:split/helmet/iron
execute as @s[nbt={Item: {tag: {phantomwings: {type: 15b}}}}] run function _phantomwings:split/helmet/diamond
execute as @s[nbt={Item: {tag: {phantomwings: {type: 16b}}}}] run function _phantomwings:split/helmet/netherite
execute as @s[nbt={Item: {tag: {phantomwings: {type: 17b}}}}] run function _phantomwings:split/helmet/turtle
data remove entity @s Item.tag.display
data remove entity @s Item.tag.CustomModelData
data remove entity @s Item.tag.phantomwings
data remove entity @s Item.tag.AttributeModifiers
data modify entity @e[type=item,tag=phantomwings.split,sort=nearest,limit=1] Item.Count set from entity @s Item.Count
