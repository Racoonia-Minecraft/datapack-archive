kill @e[type=minecraft:villager,tag=packages.package_lock,tag=!global.ignore,tag=!global.ignore.kill,distance=..0.1]
execute as @e[type=item,nbt={Item: {id: "minecraft:chest"}},sort=nearest,limit=1] at @s run function _packages:package/remove_chest
execute positioned ~ ~1 ~ run kill @e[type=minecraft:item,tag=packages.package_icon,tag=!global.ignore,tag=!global.ignore.kill,distance=..0.1]
setblock ~ ~ ~ minecraft:air
summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["packages.item_craft"],Item:{id:"minecraft:pig_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Package","color":"gold","bold":true,"italic":false}',Lore:['{"text":"You can now give another"}','{"text":"player something nice!"}']},CustomModelData:4000111,EntityTag:{id:"minecraft:marker",Tags:["packages.place_package"]}}}}
kill @s[tag=!global.ignore,tag=!global.ignore.kill]
