kill @e[type=minecraft:villager,tag=racoonia.present_lock,distance=..0.1]
execute as @e[type=item,nbt={Item: {id: "minecraft:chest"}},sort=nearest,limit=1] at @s run function _libament:present/remove_chest
execute positioned ~ ~1 ~ run kill @e[type=minecraft:item,tag=racoonia.present_icon,distance=..0.1]
setblock ~ ~ ~ minecraft:air
summon item ~ ~ ~ {PickupDelay: 20, Motion: [0.0d, 0.3d, 0.0d], Tags: ["racoonia.item.craft"], Item: {id: "minecraft:salmon_spawn_egg", Count: 1b, tag: {display: {Name: '{"text":"Present","color":"gold","bold":true,"italic":false}', Lore: ['{"text":"You can now gift another"}','{"text":"player something nice!"}']}, EntityTag: {id: "minecraft:marker", Tags: ["racoonia.place_present"]}}}}
kill @s
