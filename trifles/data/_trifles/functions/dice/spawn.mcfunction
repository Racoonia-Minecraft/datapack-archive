execute at @s run tp @s ~ ~-1.25 ~ 0 0
tag @s remove trifles_dice_spawn
tag @s add trifles_dice
summon interaction ~ ~1.25 ~ {width:1f,height:1f,Tags:["trifles.dice_interaction"]}
