advancement revoke @s only _trifles:left_click

tag @s add this
execute as @e[type=interaction,distance=..6] run function _trifles:interaction/find_attacked
tag @s remove this