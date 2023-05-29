#declare tag/block #racooniacore:replaceable

execute unless block ~ ~ ~ #racooniacore:replaceable run function _libament:present/cancel_spawn
execute positioned ~-0.1 -64 ~-0.1 if entity @e[type=minecraft:marker,tag=libament.present,tag=!global.ignore,dx=0.2,dz=0.2,dy=1000] at @e[type=minecraft:marker,tag=libament.place_present,tag=!global.ignore,dx=0.2,dz=0.2,dy=1000] run function _libament:present/cancel_spawn
execute if block ~ ~ ~ #racooniacore:replaceable as @e[type=minecraft:marker,tag=libament.place_present,tag=!global.ignore,distance=..0.1] positioned ~-0.1 -64 ~-0.1 unless entity @e[type=minecraft:marker,tag=libament.present,dx=0.2,dz=0.2,dy=1000] at @s run function _libament:present/place
