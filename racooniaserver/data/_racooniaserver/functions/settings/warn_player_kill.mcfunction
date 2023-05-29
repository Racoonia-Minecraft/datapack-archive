execute as @a[scores={racooniaserver.playerKills=1..},tag=!global.ignore] run tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] {"text": "Please do not kill players without their permission!", "color": "dark_red"}
playsound minecraft:entity.ghast.scream master @s[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~
