execute if entity @e[tag=!phantomwings.spawned] as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:leather_chestplate", Count: 1b}},sort=nearest,limit=1] run function _phantomwings:craft/leather
execute if entity @e[tag=!phantomwings.spawned] as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:chainmail_chestplate", Count: 1b}},sort=nearest,limit=1] run function _phantomwings:craft/chainmail
execute if entity @e[tag=!phantomwings.spawned] as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:iron_chestplate", Count: 1b}},sort=nearest,limit=1] run function _phantomwings:craft/iron
execute if entity @e[tag=!phantomwings.spawned] as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:golden_chestplate", Count: 1b}},sort=nearest,limit=1] run function _phantomwings:craft/gold
execute if entity @e[tag=!phantomwings.spawned] as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:diamond_chestplate", Count: 1b}},sort=nearest,limit=1] run function _phantomwings:craft/diamond
execute if entity @e[tag=!phantomwings.spawned] as @e[type=minecraft:item,distance=..0.5,nbt={Item: {id: "minecraft:netherite_chestplate", Count: 1b}},sort=nearest,limit=1] run function _phantomwings:craft/netherite
kill @s[tag=phantomwings.spawned,tag=!global.ignore,tag=!global.ignore.kill]
