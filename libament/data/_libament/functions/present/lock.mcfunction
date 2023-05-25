setblock ~ -64 ~ minecraft:yellow_shulker_box
setblock ~ -63 ~ minecraft:bedrock
data modify block ~ -64 ~ Items set from block ~ ~ ~ Items
setblock ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner: {Id: [I; -593323462, 1993558393, -2002637408, 884576786], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmNlZjlhYTE0ZTg4NDc3M2VhYzEzNGE0ZWU4OTcyMDYzZjQ2NmRlNjc4MzYzY2Y3YjFhMjFhODViNyJ9fX0="}]}}}
tag @e[type=minecraft:marker,distance=..0.1] remove racoonia.present_unfinished
tag @e[type=minecraft:marker,distance=..0.1] add racoonia.present_locked
execute positioned ~ ~1 ~ run kill @e[type=item,tag=racoonia.present_icon,distance=..0.1]
kill @e[type=minecraft:villager,tag=racoonia.present_lock,distance=..0.1]
summon armor_stand ~ ~-0.4 ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["racoonia.present_name"],CustomName:'{"text":"Title me with a renamed paper!","color":"dark_purple","bold":true}'}
tellraw @a[distance=..10] ["",{"text":"IMPORTANT: The present can't be titled after 5 minutes!","bold":true,"color":"red"},"\n",{"text":"Presents don't have to be titled!","color":"red"}]
