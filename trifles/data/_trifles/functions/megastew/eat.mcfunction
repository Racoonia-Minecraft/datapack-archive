#declare entity trifles

playsound minecraft:entity.generic.eat master @a[distance=..10] ~ ~ ~
playsound minecraft:entity.generic.drink master @a[distance=..10] ~ ~ ~
playsound minecraft:entity.player.burp master @a[distance=..10] ~ ~ ~
effect give @s saturation 1 3 true
execute store result score @s trifles.megastewCooldown run scoreboard players get trifles trifles.megastewCooldown
