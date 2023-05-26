advancement revoke @s only _trifles:right_click

tag @s add this
execute as @e[type=interaction,distance=..6] run function _trifles:interaction/find_targeted
tag @s remove this