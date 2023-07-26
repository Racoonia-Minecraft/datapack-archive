#declare entity $racoonia
#declare entity $presentLimit
#declare tag global.ignore

execute at @e[type=item,tag=!global.ignore,nbt={Item: {id: "minecraft:paper", Count: 1b}}] at @e[type=item,nbt={Item: {id: "minecraft:red_dye", Count: 1b}},distance=..0.5,sort=nearest,limit=1] run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["libament.item_craft"],Item:{id:"minecraft:pig_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Present","color":"gold","bold":true,"italic":false}',Lore:['{"text":"You can now gift another"}','{"text":"player something nice!"}']},CustomModelData:4000110,EntityTag:{id:"minecraft:marker",Tags:["libament.place_present"]}}}}
execute as @e[type=item,tag=libament.item_craft,tag=!global.ignore] at @s run function _libament:present/craft

execute at @e[type=minecraft:marker,tag=libament.place_present,tag=!global.ignore] run function _libament:present/try_place

scoreboard players set @a[tag=!global.ignore] libament.raycast_steps 0
execute as @a[tag=!global.ignore,scores={libament.talked_villager=1..}] at @s anchored eyes run function _libament:present/raycast
scoreboard players set @a[tag=!global.ignore] libament.talked_villager 0

execute if score $racoonia libament.allow_opening matches 1.. as @e[type=minecraft:marker,tag=libament.present_locked,tag=!global.ignore] at @s positioned ~ ~-0.4 ~ unless entity @e[type=armor_stand,tag=libament.present_name,tag=!libament.present_renamed,tag=!global.ignore,distance=..0.1] positioned ~ ~0.4 ~ run function _libament:present/unlock

execute at @e[type=minecraft:marker,tag=libament.present_locked,tag=!global.ignore] unless block ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner: {Id: [I; -593323462, 1993558393, -2002637408, 884576786], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmNlZjlhYTE0ZTg4NDc3M2VhYzEzNGE0ZWU4OTcyMDYzZjQ2NmRlNjc4MzYzY2Y3YjFhMjFhODViNyJ9fX0="}]}}} run function _libament:present/replace
execute at @e[type=minecraft:marker,tag=libament.present_unlocked,tag=!global.ignore] unless block ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner: {Id: [I; -593323462, 1993558393, -2002637408, 884576786], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmNlZjlhYTE0ZTg4NDc3M2VhYzEzNGE0ZWU4OTcyMDYzZjQ2NmRlNjc4MzYzY2Y3YjFhMjFhODViNyJ9fX0="}]}}} run function _libament:present/replace
execute as @e[type=minecraft:marker,tag=libament.present_unfinished,tag=!global.ignore] at @s unless block ~ ~ ~ minecraft:chest run function _libament:present/cancel
execute as @e[type=minecraft:armor_stand,tag=libament.present_name,tag=!global.ignore] if data entity @s HandItems[0].id at @s run function _libament:present/try_rename

scoreboard players add @e[type=minecraft:armor_stand,tag=libament.present_name,tag=!libament.present_renamed,tag=!global.ignore] libament.rename_time 1
execute as @e[type=minecraft:armor_stand,tag=libament.present_name,tag=!libament.present_renamed,tag=!global.ignore] if score @s libament.rename_time >= $presentLimit libament.rename_time run kill @s[tag=!global.ignore,tag=!global.ignore.kill]

schedule function _libament:main 10t
