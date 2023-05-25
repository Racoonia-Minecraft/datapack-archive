#declare objective racoonia.math
#declare entity two

scoreboard players add @s trifles.pocketCatDisabled 1
scoreboard players operation @s trifles.pocketCatDisabled %= two racoonia.math
playsound minecraft:entity.cat.purr master @s ~ ~ ~ 1 1
execute if score @s trifles.pocketCatDisabled matches 0 run title @s actionbar {"text":"Pocket cat is awake","color":"gold"}
execute if score @s trifles.pocketCatDisabled matches 1 run title @s actionbar {"text":"Pocket cat is sleeping","color":"gold"}
