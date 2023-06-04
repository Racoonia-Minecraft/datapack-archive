#declare objective racoonia.math
#declare entity $100

execute store result score @s milestones.fly run scoreboard players get @s milestones.aviate
scoreboard players operation @s milestones.fly /= $100 racoonia.math
