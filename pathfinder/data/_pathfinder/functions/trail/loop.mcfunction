execute as @e[type=marker,tag=pathfinder.trail,tag=!pathfinder.path] run function _pathfinder:trail/update

schedule function _pathfinder:trail/loop 12000t
