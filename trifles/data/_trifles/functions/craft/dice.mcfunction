kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,nbt={Item: {id: "minecraft:oak_planks", Count: 1b}},distance=..0.5,sort=nearest,limit=1]
kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,nbt={Item: {id: "minecraft:red_dye", Count: 4b}},distance=..0.5,sort=nearest,limit=1]

particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 0 10 normal @a[tag=!global.ignore,tag=!global.ignore.gui]
playsound minecraft:block.anvil.place master @a[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 1 2

tag @s remove trifles.dice.item_craft
