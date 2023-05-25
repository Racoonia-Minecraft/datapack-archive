#declare entity packageLimit
#declare tag/block #racooniacore:raycastable

execute at @e[type=minecraft:villager,tag=!global.ignore,dx=0,sort=nearest,limit=1] run function _packages:package/hit

scoreboard players add @s racoonia.raycast_steps 1

execute if score @s racoonia.raycast_steps <= packageLimit racoonia.raycast_steps positioned ^ ^ ^1 if block ~ ~ ~ #racooniacore:raycastable run function _packages:package/raycast
