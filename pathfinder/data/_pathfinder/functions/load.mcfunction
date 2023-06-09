#declare entity $speed
#declare entity $trails

scoreboard objectives add pathfinder.timer dummy
scoreboard objectives add pathfinder.setting dummy
scoreboard objectives add pathfinder.traffic dummy

execute unless score $speed pathfinder.setting matches 0 run scoreboard players set $speed pathfinder.setting 1
execute unless score $trails pathfinder.setting matches 0 run scoreboard players set $trails pathfinder.setting 1

# Loops
function _pathfinder:main
function _pathfinder:trail/loop
