#declare tag global.ignore

loot spawn ~ ~0.5 ~ mine ~ -64 ~ minecraft:air{drop_contents: 1b}
execute positioned ~ ~0.5 ~ as @e[type=minecraft:item, tag=!global.ignore, distance=..1] run data modify entity @s Motion[1] set value 0.5d
playsound minecraft:entity.item.pickup master @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 1 0

setblock ~ -64 ~ minecraft:bedrock
