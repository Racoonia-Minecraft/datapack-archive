execute in minecraft:overworld run tp @s[tag=!racoonia.admin,tag=!global.ignore,tag=!global.ignore.pos] @e[type=marker,tag=racooniaserver.spawnpoint,limit=1]
title @s[tag=!global.ignore,tag=!global.ignore.gui] title {"text":"The end is currently blocked!","color":"red"}
playsound minecraft:entity.villager.no master @s[tag=!global.ignore,tag=!global.ignore.gui,tag=!global.ignore.pos,tag=!racoonia.admin]
