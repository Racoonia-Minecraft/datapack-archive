#declare entity packageLimit

execute at @e[type=villager,sort=nearest,limit=1] run function _packages:package/action
execute store result score @s racoonia.raycast_steps run scoreboard players get packageLimit racoonia.raycast_steps
