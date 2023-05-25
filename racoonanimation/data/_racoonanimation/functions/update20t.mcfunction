scoreboard players add @e[type=minecraft:marker,tag=racoonia.animation] racoonia.animationStep 1

# Animation calls start

execute as @e[type=minecraft:marker,tag=racoonia.animation.19bridge] at @s run function _racoonanimation:animations/19bridge/play
execute as @e[type=minecraft:marker,tag=racoonia.animation.present] at @s run function _racoonanimation:animations/present/play

# Animation calls end

schedule function _racoonanimation:update20t 20t
