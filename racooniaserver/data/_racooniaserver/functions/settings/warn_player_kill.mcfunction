execute as @a[scores={racoonia.playerKills=1..},tag=!global.ignore] run tellraw @s {"text": "Please do not kill players without their permission!", "color": "dark_red"}
playsound minecraft:entity.ghast.scream master @s ~ ~ ~
