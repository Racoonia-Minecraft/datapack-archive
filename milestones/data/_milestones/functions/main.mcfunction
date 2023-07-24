execute as @a[scores={milestones_progress=1..}] run function _milestones:progress
scoreboard players reset @a milestones_progress
scoreboard players enable @a milestones_progress

schedule function _milestones:main 20t
