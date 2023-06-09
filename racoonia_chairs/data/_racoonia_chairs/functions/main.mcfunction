# detect saddle item on a stairs and spawn chair
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:saddle"}},tag=!racoonia_chairs_ignore,tag=!global.ignore] at @s if block ~ ~ ~ #minecraft:stairs[half=bottom] align xyz positioned ~.5 ~ ~.5 unless entity @e[type=minecraft:pig,tag=racoonia_chairs,distance=..0.4] run function _racoonia_chairs:create_chair

# kill pig (saddle) if stairs broken
execute as @e[type=minecraft:pig,tag=racoonia_chairs,tag=!global.ignore,tag=!global.ignore.kill] at @s unless block ~ ~1 ~ #minecraft:stairs positioned ~ ~.5 ~ run function _racoonia_chairs:kill

schedule function _racoonia_chairs:main 20t
