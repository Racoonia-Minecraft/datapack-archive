# Replace zombified piglin with chair
# @s = zombified piglin that replaced the pig/chair
# at @s
# runs from lightning/delay

# spawn chair
summon minecraft:pig ~ ~-10000 ~ {Tags:["racoonia_chairs"],Team:"racoonia_chairs",NoAI:1b,Saddle:1b,NoGravity:1b,Silent:1b,DeathTime:19s,InLove:2147483647,Attributes:[{Name:"generic.movement_speed",Base:0.0}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:11,Amplifier:10b,Duration:2147483647,ShowParticles:0b}],DeathLootTable:"minecraft:empty"}
execute positioned ~ ~-10000 ~ run scoreboard players set @e[type=pig,tag=racoonia_chairs,limit=1,distance=..0.1] racoonia_entity_version 1

# copy zombified piglin rotation
execute rotated as @s positioned ~ ~-10000 ~ run tp @e[type=minecraft:pig,tag=racoonia_chairs,distance=..0.4,limit=1] ~ ~10000 ~ ~ ~

# kill zombified piglin
tp @s ~ -10000 ~
