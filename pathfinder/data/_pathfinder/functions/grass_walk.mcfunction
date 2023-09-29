#declare entity #trails

advancement revoke @s only _pathfinder:grass

execute if score #trails pathfinder.setting matches 1 if score @s pathfinder.timer matches 1.. at @s run function _pathfinder:trail/new