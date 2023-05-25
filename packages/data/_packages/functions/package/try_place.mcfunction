#declare tag/block #racooniacore:replaceable

execute unless block ~ ~ ~ #racooniacore:replaceable run function _packages:package/cancel_spawn
execute positioned ~-0.1 -64 ~-0.1 if entity @e[type=minecraft:marker,tag=racoonia.package,dx=0.2,dz=0.2,dy=1000] at @e[type=minecraft:marker,tag=racoonia.place_package,dx=0.2,dz=0.2,dy=1000] run function _packages:package/cancel_spawn
execute if block ~ ~ ~ #racooniacore:replaceable as @e[type=minecraft:marker,tag=racoonia.place_package,distance=..0.1] positioned ~-0.1 -64 ~-0.1 unless entity @e[type=minecraft:marker,tag=racoonia.package,dx=0.2,dz=0.2,dy=1000] at @s run function _packages:package/place
