execute as @s[tag=trifles.dice_interaction] at @s positioned ~ ~-1.25 ~ as @e[type=minecraft:armor_stand,tag=trifles.dice,distance=..0.1] run function _trifles:dice/roll

data remove entity @s interaction
