tag @e[type=minecraft:marker,tag=racoonia.present,distance=..0.1] add racoonia.animation.present
tag @e[type=minecraft:marker,tag=racoonia.present,distance=..0.1] add racoonia.animation
execute positioned ~ ~1 ~ run kill @e[type=minecraft:item,tag=racoonia.present_icon,distance=..0.1]
execute positioned ~ ~-0.4 ~ run kill @e[type=minecraft:armor_stand,tag=racoonia.present_name,distance=..0.1]
kill @s
