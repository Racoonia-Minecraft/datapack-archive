#declare entity libament

kill @e[type=item,tag=!libament.present_icon,tag=!global.ignore,tag=!global.ignore.kill,nbt={Item: {id: "minecraft:player_head"}},distance=..2]
setblock ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner: {Id: [I; -593323462, 1993558393, -2002637408, 884576786], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmNlZjlhYTE0ZTg4NDc3M2VhYzEzNGE0ZWU4OTcyMDYzZjQ2NmRlNjc4MzYzY2Y3YjFhMjFhODViNyJ9fX0="}]}}}
execute unless score libament libament.allow_opening matches 1.. run tellraw @a[distance=..7,tag=!global.ignore,tag=!global.ignore.gui] {"text":"Presents can't be opened yet!","bold":true,"underlined":true,"color":"red"}
execute if score libament libament.allow_opening matches 1.. run tellraw @a[distance=..7,tag=!global.ignore,tag=!global.ignore.gui] {"text":"Presents can be opened by right clicking them!","bold":true,"underlined":true,"color":"red"}
playsound minecraft:entity.villager.no master @a[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~
