#declare entity racoonia

kill @e[type=item,tag=!racoonia.package_icon,nbt={Item: {id: "minecraft:player_head"}},distance=..2]
setblock ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;-2053282894,49104884,-1731397254,1003614491],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjY4MjRjM2ZkMTZkNTljNDM5MzdiNTNmZTE0N2ViYWNiZjgxNzgyZjVmMjVkOTAzNTBlYWJhODYxNGU1ZDU3YiJ9fX0="}]}}}
execute unless score racoonia racoonia.packages matches 1.. run tellraw @a[distance=..7] {"text":"Packages can't be opened yet!","bold":true,"underlined":true,"color":"red"}
execute if score racoonia racoonia.packages matches 1.. run tellraw @a[distance=..7] {"text":"Packages can be opened by right clicking them!","bold":true,"underlined":true,"color":"red"}
playsound minecraft:entity.villager.no master @a ~ ~ ~
