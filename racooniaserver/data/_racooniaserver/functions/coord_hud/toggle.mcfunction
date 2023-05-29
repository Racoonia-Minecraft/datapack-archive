#declare objective racoonia.math
#declare entity two

scoreboard players add @s racooniaserver.displayCoords 1
scoreboard players operation @s racooniaserver.displayCoords %= two racoonia.math
scoreboard players reset @s coordinates_hud
