kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,nbt={Item: {id: "minecraft:book", Count: 1b}},distance=..0.5,sort=nearest,limit=1]
kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,nbt={Item: {id: "minecraft:golden_apple", Count: 1b}},distance=..0.5,sort=nearest,limit=1]

particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 0 10 normal @a[tag=!global.ignore,tag=!global.ignore.gui]
playsound minecraft:block.anvil.place master @a[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 1 2
playsound minecraft:entity.wither.spawn master @a[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 1 0

tag @s remove trifles.bible.item_craft
