execute as @s[tag=trifles.dice_interaction] at @s positioned ~ ~-1.45 ~ as @e[type=minecraft:armor_stand,tag=trifles.dice,distance=..0.1] run function _trifles:dice/break
execute as @s[tag=trifles.block_button_interaction] at @s run function _trifles:block_button/break
execute as @s[tag=trifles.block_lever_interaction] at @s run function _trifles:block_lever/break

data remove entity @s attack
