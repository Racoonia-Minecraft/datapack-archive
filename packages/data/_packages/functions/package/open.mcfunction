tag @e[type=minecraft:marker,tag=packages.package,distance=..0.1] add racoonanimation.package
tag @e[type=minecraft:marker,tag=packages.package,distance=..0.1] add racoonanimation
execute positioned ~ ~1 ~ run kill @e[type=minecraft:item,tag=packages.package_icon,tag=!global.ignore,tag=!global.ignore.kill,distance=..0.1]
execute positioned ~ ~-0.4 ~ run kill @e[type=minecraft:armor_stand,tag=packages.package_name,tag=!global.ignore,tag=!global.ignore.kill,distance=..0.1]
kill @s[tag=!global.ignore,tag=!global.ignore.kill]
