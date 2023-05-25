#declare entity racoonia
#declare entity packageLimit
#declare tag global.ignore

execute at @e[type=item,nbt={Item: {id: "minecraft:paper", Count: 1b}}] at @e[type=item,nbt={Item: {id: "minecraft:red_dye", Count: 1b}},distance=..0.5,sort=nearest,limit=1] run summon item ~ ~ ~ {PickupDelay: 20, Motion: [0.0d, 0.3d, 0.0d], Tags: ["racoonia.item.craft"], Item: {id: "minecraft:salmon_spawn_egg", Count: 1b, tag: {display: {Name: '{"text":"Packages","color":"gold","bold":true,"italic":false}', Lore: ['{"text":"You can now give another"}', '{"text":"player something nice!"}']}, EntityTag: {id: "minecraft:marker", Tags: ["racoonia.place_package"]}}}}
execute as @e[type=item,tag=racoonia.item.craft] at @s run function _packages:package/craft

execute at @e[type=minecraft:marker,tag=racoonia.place_package] run function _packages:package/try_place

scoreboard players set @a racoonia.raycast_steps 0
execute as @a[tag=!global.ignore,scores={racoonia.talked_villager=1..}] at @s anchored eyes run function _packages:package/raycast
scoreboard players set @a racoonia.talked_villager 0

execute if score racoonia racoonia.packages matches 1.. as @e[type=minecraft:marker,tag=racoonia.package_locked] at @s positioned ~ ~-0.4 ~ unless entity @e[type=armor_stand,tag=racoonia.package_name,tag=!racoonia.package_renamed,distance=..0.1] positioned ~ ~0.4 ~ run function _packages:package/unlock

execute at @e[type=minecraft:marker,tag=racoonia.package_locked] unless block ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;-2053282894,49104884,-1731397254,1003614491],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjY4MjRjM2ZkMTZkNTljNDM5MzdiNTNmZTE0N2ViYWNiZjgxNzgyZjVmMjVkOTAzNTBlYWJhODYxNGU1ZDU3YiJ9fX0="}]}}} run function _packages:package/replace
execute at @e[type=minecraft:marker,tag=racoonia.package_unlocked] unless block ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;-2053282894,49104884,-1731397254,1003614491],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjY4MjRjM2ZkMTZkNTljNDM5MzdiNTNmZTE0N2ViYWNiZjgxNzgyZjVmMjVkOTAzNTBlYWJhODYxNGU1ZDU3YiJ9fX0="}]}}} run function _packages:package/replace
execute as @e[type=minecraft:marker,tag=racoonia.package_unfinished] at @s unless block ~ ~ ~ minecraft:chest run function _packages:package/cancel
execute as @e[type=minecraft:armor_stand,tag=racoonia.package_name] if data entity @s HandItems[0].id at @s run function _packages:package/try_rename

scoreboard players add @e[type=minecraft:armor_stand,tag=racoonia.package_name,tag=!racoonia.package_renamed] racoonia.package_rename_time 1
execute as @e[type=minecraft:armor_stand,tag=racoonia.package_name,tag=!racoonia.package_renamed] if score @s racoonia.package_rename_time >= packageLimit racoonia.package_rename_time run kill @s

schedule function _packages:update10t 10t
