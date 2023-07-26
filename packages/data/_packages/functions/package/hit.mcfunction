#declare entity $packageLimit

execute at @e[type=villager,sort=nearest,limit=1] run function _packages:package/action
execute store result score @s packages.raycast_steps run scoreboard players get $packageLimit packages.raycast_steps
