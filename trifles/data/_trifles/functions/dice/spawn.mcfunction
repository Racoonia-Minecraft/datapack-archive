summon interaction ~ ~ ~ {Tags:["trifles.dice_interaction"]}
tp @s ~ ~-1.25 ~ 0 0
execute at @s as @e[type=armor_stand,tag=trifles.dice,distance=..0.1] run function _trifles:dice/break
tag @s remove trifles.dice_spawn
tag @s add trifles.dice
