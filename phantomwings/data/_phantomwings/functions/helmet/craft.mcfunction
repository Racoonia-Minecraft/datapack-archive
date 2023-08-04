tag @s add phantomwings.craft
execute as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:leather_helmet", Count: 1b}},limit=1] run function _phantomwings:helmet/leather
execute as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:chainmail_helmet", Count: 1b}},limit=1] run function _phantomwings:helmet/chainmail
execute as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:iron_helmet", Count: 1b}},limit=1] run function _phantomwings:helmet/iron
execute as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:golden_helmet", Count: 1b}},limit=1] run function _phantomwings:helmet/gold
execute as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:diamond_helmet", Count: 1b}},limit=1] run function _phantomwings:helmet/diamond
execute as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:netherite_helmet", Count: 1b}},limit=1] run function _phantomwings:helmet/netherite
execute as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:turtle_helmet", Count: 1b}},limit=1] run function _phantomwings:helmet/turtle
tag @s remove phantomwings.craft
