#declare objective racoonia.math
#declare entity $2

scoreboard players add @s trifles.pocketcatDisabled 1
scoreboard players operation @s trifles.pocketcatDisabled %= $2 racoonia.math
playsound minecraft:entity.cat.purr master @s[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 1 1
execute if score @s trifles.pocketcatDisabled matches 0 run title @s[tag=!global.ignore,tag=!global.ignore.gui] actionbar {"text":"Pocket cat is awake","color":"gold"}
execute if score @s trifles.pocketcatDisabled matches 1 run title @s[tag=!global.ignore,tag=!global.ignore.gui] actionbar {"text":"Pocket cat is sleeping","color":"gold"}
