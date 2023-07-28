kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,nbt={Item: {id: "minecraft:glass_bottle",tag:{trifles:{is_gadget:1b,type:"cup"}}, Count: 1b}},distance=..0.5,sort=nearest,limit=1]
kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,nbt={Item: {id: "minecraft:cocoa_beans", Count: 3b}},distance=..0.5,sort=nearest,limit=1]
data merge entity @e[type=item,tag=!global.ignore,nbt={Item: {id: "minecraft:milk_bucket", Count: 1b}},distance=..0.5,sort=nearest,limit=1] {Item:{id:"minecraft:bucket",Count:1b}}


particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 0 10 normal @a[tag=!global.ignore,tag=!global.ignore.gui]
playsound minecraft:block.anvil.place master @a[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 1 2
playsound minecraft:block.brewing_stand.brew master @a[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~

tag @s remove trifles.hot_chocolate.item_craft
