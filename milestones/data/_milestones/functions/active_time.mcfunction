#declare objective racoonia.math
#declare entity $60

execute store result score @s milestones.activeTime run scoreboard players get @s milestones.playtime
scoreboard players operation @s milestones.activeTime /= $20 racoonia.math
scoreboard players operation @s milestones.activeTime -= @s milestones.afkTime
scoreboard players operation @s milestones.activeTime /= $60 racoonia.math
