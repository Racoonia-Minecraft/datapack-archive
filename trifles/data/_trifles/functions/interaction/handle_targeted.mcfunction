execute as @s[tag=trifles.dice_interaction] at @s positioned ~ ~-1.45 ~ as @e[type=minecraft:armor_stand,tag=trifles.dice,distance=..0.1] run function _trifles:dice/roll
execute as @s[tag=trifles.block_button_interaction, scores={trifles.block_button_off=2}] at @s run function _trifles:block_button/click
execute as @s[tag=trifles.block_lever_interaction] at @s run function _trifles:block_lever/click

data remove entity @s interaction
