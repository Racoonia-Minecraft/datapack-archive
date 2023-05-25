setblock ~ -64 ~ minecraft:yellow_shulker_box
setblock ~ -63 ~ minecraft:bedrock
data modify block ~ -64 ~ Items set from block ~ ~ ~ Items
setblock ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;-2053282894,49104884,-1731397254,1003614491],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjY4MjRjM2ZkMTZkNTljNDM5MzdiNTNmZTE0N2ViYWNiZjgxNzgyZjVmMjVkOTAzNTBlYWJhODYxNGU1ZDU3YiJ9fX0="}]}}}
tag @e[type=minecraft:marker,distance=..0.1] remove racoonia.package_unfinished
tag @e[type=minecraft:marker,distance=..0.1] add racoonia.package_locked
execute positioned ~ ~1 ~ run kill @e[type=item,tag=racoonia.package_icon,distance=..0.1]
kill @e[type=minecraft:villager,tag=racoonia.package_lock,distance=..0.1]
summon armor_stand ~ ~-0.4 ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["racoonia.package_name"],CustomName:'{"text":"Title me with a renamed paper!","color":"dark_purple","bold":true}'}
tellraw @a[distance=..10] ["",{"text":"IMPORTANT: The package can't be titled after 5 minutes!","bold":true,"color":"red"},"\n",{"text":"Packages don't have to be titled!","color":"red"}]
