scoreboard players add @e[type=minecraft:marker,tag=racoonanimation] racoonanimation.frame 1

# Animation calls start

execute as @e[type=minecraft:marker,tag=racoonanimation.19bridge] at @s run function _racoonanimation:animations/19bridge/play
execute as @e[type=minecraft:marker,tag=racoonanimation.present] at @s run function _racoonanimation:animations/present/play
execute as @e[type=minecraft:marker,tag=racoonanimation.package] at @s run function _racoonanimation:animations/package/play
# execute as @e[type=minecraft:marker,tag=yourAnimationTag] at @s run function _racoonanimation:animations/your-animation-folder/play

# Animation calls end

schedule function _racoonanimation:main 20t
