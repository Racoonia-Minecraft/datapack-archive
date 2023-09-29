#declare objective racoonia.math
#declare entity #60

execute store result score @s milestones.afk run scoreboard players get @s milestones.afkTime
scoreboard players operation @s milestones.afk /= #60 racoonia.math
