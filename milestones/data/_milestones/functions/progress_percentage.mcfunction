#declare objective racoonia.math
#declare entity $100

execute store result score @s milestones.percentage run scoreboard players get @s milestones.progress
scoreboard players operation @s milestones.percentage *= $100 racoonia.math
scoreboard players operation @s milestones.percentage /= @s milestones.target
