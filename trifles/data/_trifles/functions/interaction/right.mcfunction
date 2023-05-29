advancement revoke @s only _trifles:click/interaction_right

tag @s add this
execute as @e[type=interaction,distance=..6] run function _trifles:interaction/find_targeted
tag @s remove this