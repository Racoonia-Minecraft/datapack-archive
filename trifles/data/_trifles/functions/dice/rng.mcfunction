# Requires the random datapack by Aeldrion https://github.com/Aeldrion/Minecraft-Random

#declare objective random dummy
#declare entity $min
#declare entity $max

scoreboard players set $min random 1
scoreboard players set $max random 6
function random:uniform
