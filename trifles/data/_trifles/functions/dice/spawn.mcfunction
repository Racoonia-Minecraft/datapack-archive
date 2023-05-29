execute at @s run tp @s ~ ~-1.25 ~ 0 0
summon interaction ~ ~1.25 ~ {Tags:["trifles.dice_interaction"]}
tag @s remove trifles.dice_spawn
tag @s add trifles.dice
