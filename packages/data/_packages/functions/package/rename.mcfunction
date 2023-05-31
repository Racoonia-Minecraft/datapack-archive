data modify entity @s CustomName set from entity @s HandItems[0].tag.display.Name
tag @s add packages.package_renamed
playsound minecraft:entity.villager.work_cartographer master @a[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~
