#declare objective racoonia.math
#declare entity two

scoreboard players add @s racoonia.displayCoords 1
scoreboard players operation @s racoonia.displayCoords %= two racoonia.math
scoreboard players reset @s coordinates_hud
