#declare tag global.ignore

loot spawn ~ ~0.5 ~ mine ~ -64 ~ minecraft:air{drop_contents: 1b}
execute positioned ~ ~0.5 ~ as @e[type=minecraft:item, tag=!global.ignore, distance=..1] run data modify entity @s Motion[1] set value 0.5d
playsound minecraft:block.amethyst_block.chime master @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui]
playsound minecraft:entity.allay.ambient_with_item master @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui]

setblock ~ -64 ~ minecraft:bedrock
