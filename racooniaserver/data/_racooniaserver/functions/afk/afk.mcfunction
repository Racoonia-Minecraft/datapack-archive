execute store result score @s racooniaserver.x_rotation run data get entity @s Rotation[0]
execute store result score @s racooniaserver.y_rotation run data get entity @s Rotation[1]

tag @s add racooniaserver.afk
title @s actionbar {"text":"You are now AFK","color":"red"}
