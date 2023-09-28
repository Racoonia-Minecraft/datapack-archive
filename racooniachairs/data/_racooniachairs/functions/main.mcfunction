# detect saddle item on a stairs and spawn chair
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:saddle"}},tag=!racooniachairs_ignore,tag=!global.ignore] at @s if block ~ ~ ~ #minecraft:stairs[half=bottom] align xyz positioned ~.5 ~ ~.5 unless entity @e[type=minecraft:pig,tag=racooniachairs,distance=..0.4] run function _racooniachairs:create_chair

# kill pig (saddle) if stairs broken
execute as @e[type=minecraft:pig,tag=racooniachairs,tag=!global.ignore,tag=!global.ignore.kill] at @s unless block ~ ~1 ~ #minecraft:slabs unless block ~ ~1 ~ #minecraft:stairs positioned ~ ~.5 ~ run function _racooniachairs:kill

schedule function _racooniachairs:main 20t
