execute as @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,nbt=!{Item: {tag: {phantomwings: {is_wing: 1b}}}},nbt={Item: {id: "minecraft:elytra", Count: 1b}}] at @s run function _phantomwings:chestplate/craft
execute as @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,nbt=!{Item: {tag: {phantomwings: {is_helmet: 1b}}}},nbt={Item: {id: "minecraft:carved_pumpkin", Count: 1b}}] at @s run function _phantomwings:helmet/craft

schedule function _phantomwings:main 20t
