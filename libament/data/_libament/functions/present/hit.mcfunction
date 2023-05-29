#declare entity presentLimit

execute at @e[type=villager,sort=nearest,limit=1] run function _libament:present/action
execute store result score @s libament.raycast_steps run scoreboard players get presentLimit libament.raycast_steps
