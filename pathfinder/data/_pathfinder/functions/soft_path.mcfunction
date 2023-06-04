advancement revoke @s only _pathfinder:soft_path
execute if score @s pathfinder.timer matches 1.. run function _pathfinder:path_found
