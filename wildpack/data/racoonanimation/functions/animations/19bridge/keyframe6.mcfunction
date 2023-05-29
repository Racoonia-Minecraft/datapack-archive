clone -791 -39 -290 -786 -34 -292 -797 106 -298
playsound minecraft:block.end_portal.spawn master @a[tag=!global.ignore,tag=!global.ignore.gui] -796 109 -297

# fill 11 137 8 -7 118 -9 minecraft:air replace minecraft:barrier
worldborder set 300000
gamerule doDaylightCycle true
gamerule doWeatherCycle true
effect clear @a
kill @s[tag=!global.ignore,tag=!global.ignore.kill]
