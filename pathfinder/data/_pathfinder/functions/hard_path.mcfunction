advancement revoke @s only _pathfinder:hard_path

scoreboard players set @s pathfinder.timer 3
function _pathfinder:path_found

execute if score #trails pathfinder.setting matches 1 at @s unless entity @e[type=marker,distance=..3] run summon marker ~ ~ ~ {Tags:["pathfinder.path"]}
