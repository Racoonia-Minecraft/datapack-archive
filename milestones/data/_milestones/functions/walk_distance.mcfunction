#declare objective racoonia.math
#declare entity #100

scoreboard players operation @s milestones.walk += @s milestones.walk_only
scoreboard players operation @s milestones.walk += @s milestones.sprint
scoreboard players operation @s milestones.walk += @s milestones.crouch
scoreboard players operation @s milestones.walk += @s milestones.jump
scoreboard players operation @s milestones.walk /= #100 racoonia.math
