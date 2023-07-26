#declare entity racoonia
#declare entity packageLimit
#declare tag global.ignore

execute at @e[type=item,nbt={Item: {id: "minecraft:paper", Count: 1b}}] at @e[type=item,nbt={Item: {id: "minecraft:brown_dye", Count: 1b}},distance=..0.5,sort=nearest,limit=1] run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["packages.item_craft"],Item:{id:"minecraft:pig_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Package","color":"gold","bold":true,"italic":false}',Lore:['{"text":"You can now give another"}','{"text":"player something nice!"}']},CustomModelData:4000111,EntityTag:{id:"minecraft:marker",Tags:["packages.place_package"]}}}}
execute as @e[type=item,tag=packages.item_craft] at @s run function _packages:package/craft

execute at @e[type=minecraft:marker,tag=packages.place_package] run function _packages:package/try_place

scoreboard players set @a packages.raycast_steps 0
execute as @a[tag=!global.ignore,scores={packages.talked_villager=1..}] at @s anchored eyes run function _packages:package/raycast
scoreboard players set @a packages.talked_villager 0

execute as @e[type=minecraft:marker,tag=packages.package_locked] at @s positioned ~ ~-0.4 ~ unless entity @e[type=armor_stand,tag=packages.package_name,tag=!packages.package_renamed,distance=..0.1] positioned ~ ~0.4 ~ run function _packages:package/unlock

execute at @e[type=minecraft:marker,tag=packages.package_locked] unless block ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;-2053282894,49104884,-1731397254,1003614491],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjY4MjRjM2ZkMTZkNTljNDM5MzdiNTNmZTE0N2ViYWNiZjgxNzgyZjVmMjVkOTAzNTBlYWJhODYxNGU1ZDU3YiJ9fX0="}]}}} run function _packages:package/replace
execute at @e[type=minecraft:marker,tag=packages.package_unlocked] unless block ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;-2053282894,49104884,-1731397254,1003614491],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjY4MjRjM2ZkMTZkNTljNDM5MzdiNTNmZTE0N2ViYWNiZjgxNzgyZjVmMjVkOTAzNTBlYWJhODYxNGU1ZDU3YiJ9fX0="}]}}} run function _packages:package/replace
execute as @e[type=minecraft:marker,tag=packages.package_unfinished] at @s unless block ~ ~ ~ minecraft:chest run function _packages:package/cancel
execute as @e[type=minecraft:armor_stand,tag=packages.package_name] if data entity @s HandItems[0].id at @s run function _packages:package/try_rename

scoreboard players add @e[type=minecraft:armor_stand,tag=packages.package_name,tag=!packages.package_renamed] packages.rename_time 1
execute as @e[type=minecraft:armor_stand,tag=packages.package_name,tag=!packages.package_renamed] if score @s packages.rename_time >= packageLimit packages.rename_time run kill @s[tag=!global.ignore,tag=!global.ignore.kill]

schedule function _packages:main 20t
