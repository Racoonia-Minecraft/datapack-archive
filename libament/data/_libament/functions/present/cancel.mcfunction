kill @e[type=minecraft:villager,tag=libament.present_lock,distance=..0.1,tag=!global.ignore,tag=!global.ignore.kill]
execute as @e[type=item,nbt={Item: {id: "minecraft:chest"}},sort=nearest,limit=1] at @s run function _libament:present/remove_chest
execute positioned ~ ~1 ~ run kill @e[type=minecraft:item,tag=libament.present_icon,distance=..0.1,tag=!global.ignore,tag=!global.ignore.kill]
setblock ~ ~ ~ minecraft:air
summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["libament.item_craft"],Item:{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Present","color":"gold","bold":true,"italic":false}',Lore:['{"text":"You can now gift another"}','{"text":"player something nice!"}']},CustomModelData:4000110,EntityTag:{id:"minecraft:marker",Tags:["libament.place_present"]}}}}
kill @s[tag=!global.ignore,tag=!global.ignore.kill]
