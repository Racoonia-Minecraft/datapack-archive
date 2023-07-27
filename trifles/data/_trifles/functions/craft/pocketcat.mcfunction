kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,nbt={Item: {id: "minecraft:leather", Count: 3b}},distance=..0.5,sort=nearest,limit=1]
kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,nbt={Item: {id: "minecraft:rabbit_hide", Count: 2b}},distance=..0.5,sort=nearest,limit=1]
kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,nbt={Item: {id: "minecraft:salmon", Count: 1b}},distance=..0.5,sort=nearest,limit=1]

particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 0 10 normal @a[tag=!global.ignore,tag=!global.ignore.gui]
playsound minecraft:block.anvil.place master @a[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 1 2
playsound minecraft:entity.cat.ambient master @a[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~

tag @s remove trifles.cat_in_a_bag.item_craft
