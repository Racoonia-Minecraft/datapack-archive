kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,nbt={Item: {id: "minecraft:paper", Count: 1b}},distance=..0.5,sort=nearest,limit=1]
kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,nbt={Item: {id: "minecraft:brown_dye", Count: 1b}},distance=..0.5,sort=nearest,limit=1]

particle minecraft:snowflake ~ ~1 ~ 0.3 0.3 0.3 0 10 normal @a[tag=!global.ignore,tag=!global.ignore.gui]
playsound minecraft:block.enchantment_table.use master @a[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~

tag @s remove packages.item_craft
