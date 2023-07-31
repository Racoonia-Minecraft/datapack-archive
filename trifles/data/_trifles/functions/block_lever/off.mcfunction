execute if block ~1 ~ ~ target[power=15] run setblock ~1 ~ ~ target[power=0]
execute if block ~-1 ~ ~ target[power=15] run setblock ~-1 ~ ~ target[power=0]
execute if block ~ ~ ~1 target[power=15] run setblock ~ ~ ~1 target[power=0]
execute if block ~ ~ ~-1 target[power=15] run setblock ~ ~ ~-1 target[power=0]
execute if block ~ ~1 ~ target[power=15] run setblock ~ ~1 ~ target[power=0]
execute if block ~ ~-1 ~ target[power=15] run setblock ~ ~-1 ~ target[power=0]
playsound minecraft:block.lever.click block @a ~ ~ ~ 0.5 0

scoreboard players reset @s trifles.block_lever
