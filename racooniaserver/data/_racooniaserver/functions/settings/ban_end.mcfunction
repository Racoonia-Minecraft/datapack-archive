tp @s[tag=!global.ignore,tag=!global.ignore.pos,tag=!racoonia.admin] ~ ~ ~
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui,tag=!global.ignore.pos,tag=!racoonia.admin] {"text": "The end is currently blocked!", "color": "dark_red"}
playsound minecraft:entity.experience_orb.pickup master @s[tag=!global.ignore,tag=!global.ignore.gui,tag=!global.ignore.pos,tag=!racoonia.admin]
advancement revoke @s[tag=!global.ignore,tag=!global.ignore.pos,tag=!racoonia.admin] only minecraft:end/root
