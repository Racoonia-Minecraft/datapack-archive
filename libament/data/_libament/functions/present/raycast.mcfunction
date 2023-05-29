#declare entity presentLimit
#declare tag/block #racooniacore:raycastable

execute at @e[type=minecraft:villager,tag=!global.ignore,dx=0,sort=nearest,limit=1] run function _libament:present/hit

scoreboard players add @s[tag=!global.ignore] libament.raycast_steps 1

execute if score @s[tag=!global.ignore] libament.raycast_steps <= presentLimit libament.raycast_steps positioned ^ ^ ^1 if block ~ ~ ~ #racooniacore:raycastable run function _libament:present/raycast
