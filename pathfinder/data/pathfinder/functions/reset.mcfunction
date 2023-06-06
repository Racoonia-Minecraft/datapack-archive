#declare entity $speed
#declare entity $trails

scoreboard players reset * pathfinder.timer
scoreboard players reset * pathfinder.setting
scoreboard players reset * pathfinder.traffic

scoreboard players set $speed pathfinder.setting 1
scoreboard players set $trails pathfinder.setting 1

kill @e[type=marker,tag=pathfinder.path]
kill @e[type=marker,tag=pathfinder.trail]
