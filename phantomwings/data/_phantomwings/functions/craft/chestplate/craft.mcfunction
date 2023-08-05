tag @s add phantomwings.craft
execute as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:leather_chestplate", Count: 1b}},limit=1] run function _phantomwings:craft/chestplate/leather
execute as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:chainmail_chestplate", Count: 1b}},limit=1] run function _phantomwings:craft/chestplate/chainmail
execute as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:iron_chestplate", Count: 1b}},limit=1] run function _phantomwings:craft/chestplate/iron
execute as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:golden_chestplate", Count: 1b}},limit=1] run function _phantomwings:craft/chestplate/gold
execute as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:diamond_chestplate", Count: 1b}},limit=1] run function _phantomwings:craft/chestplate/diamond
execute as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:netherite_chestplate", Count: 1b}},limit=1] run function _phantomwings:craft/chestplate/netherite
tag @s remove phantomwings.craft
