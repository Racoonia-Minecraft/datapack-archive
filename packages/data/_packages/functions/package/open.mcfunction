tag @e[type=minecraft:marker,tag=racoonia.package,distance=..0.1] add racoonia.animation.package
tag @e[type=minecraft:marker,tag=racoonia.package,distance=..0.1] add racoonia.animation
execute positioned ~ ~1 ~ run kill @e[type=minecraft:item,tag=racoonia.package_icon,distance=..0.1]
execute positioned ~ ~-0.4 ~ run kill @e[type=minecraft:armor_stand,tag=racoonia.package_name,distance=..0.1]
kill @s
