execute in minecraft:overworld as @e[type=marker,tag=racooniaserver.spawnpoint] run function _racooniaserver:remove_spawn
summon marker ~ ~ ~ {Tags:["racooniaserver.spawnpoint"]}
forceload add ~ ~
