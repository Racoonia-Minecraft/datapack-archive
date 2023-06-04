#declare objective racoonia.math
#declare entity $3600

execute store result score @s milestones.afk run scoreboard players get @s milestones.afkTime
scoreboard players operation @s milestones.afk /= $3600 racoonia.math
