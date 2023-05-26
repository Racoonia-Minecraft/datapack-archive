#declare objective racoonia.math
#declare entity two

scoreboard players add @s trifles.pocketcatDisabled 1
scoreboard players operation @s trifles.pocketcatDisabled %= two racoonia.math
playsound minecraft:entity.cat.purr master @s ~ ~ ~ 1 1
execute if score @s trifles.pocketcatDisabled matches 0 run title @s actionbar {"text":"Pocket cat is awake","color":"gold"}
execute if score @s trifles.pocketcatDisabled matches 1 run title @s actionbar {"text":"Pocket cat is sleeping","color":"gold"}
