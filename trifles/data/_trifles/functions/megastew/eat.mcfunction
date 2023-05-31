#declare entity trifles

playsound minecraft:entity.generic.eat master @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~
playsound minecraft:entity.generic.drink master @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~
playsound minecraft:entity.player.burp master @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~
effect give @s[tag=!global.ignore] saturation 1 3 true
execute store result score @s trifles.megastewCooldown run scoreboard players get trifles trifles.megastewCooldown
scoreboard players add @s milestones.eaten 1
