advancement revoke @s only _trifles:click/interaction_left

tag @s add this
execute as @e[type=interaction,distance=..6] run function _trifles:interaction/find_attacked
tag @s remove this