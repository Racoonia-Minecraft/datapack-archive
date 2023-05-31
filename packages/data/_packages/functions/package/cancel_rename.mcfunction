summon item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b}}
data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.id set from entity @s HandItems[0].id
tellraw @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui] {"text":"Use a renamed paper to title your package!","bold":true,"underlined":true,"color":"red"}
playsound minecraft:entity.villager.no master @a[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~
