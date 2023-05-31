tag @e[type=minecraft:marker,tag=!global.ignore,tag=libament.present,distance=..0.1] add racoonanimation.present
tag @e[type=minecraft:marker,tag=!global.ignore,tag=libament.present,distance=..0.1] add racoonanimation
execute positioned ~ ~1 ~ run kill @e[type=minecraft:item,tag=!global.ignore,tag=!global.ignore.kill,tag=libament.present_icon,distance=..0.1]
execute positioned ~ ~-0.4 ~ run kill @e[type=minecraft:armor_stand,tag=!global.ignore,tag=!global.ignore.kill,tag=libament.present_name,distance=..0.1]
kill @s[tag=!global.ignore,tag=!global.ignore.kill]
