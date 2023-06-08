scoreboard players add @e[type=marker,tag=pathfinder.trail,distance=..3] pathfinder.traffic 1

execute if entity @e[type=marker,tag=pathfinder.path,distance=..5] unless entity @e[type=marker,tag=pathfinder.path,distance=..2] unless entity @e[type=marker,tag=pathfinder.trail,distance=..3] run summon marker ~ ~ ~ {Tags:["pathfinder.new_trail","pathfinder.trail"]}
execute as @e[type=marker,tag=pathfinder.new_trail] run function _pathfinder:trail/setup

execute as @e[type=marker,tag=pathfinder.trail,scores={pathfinder.traffic=15..}] at @s run function _pathfinder:trail/build
