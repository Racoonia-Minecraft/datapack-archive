execute unless entity @s[tag=!global.ignore,nbt={HandItems:[{id:"minecraft:paper"}]}] run function _libament:present/cancel_rename
execute if entity @s[tag=!global.ignore,nbt={HandItems:[{id:"minecraft:paper"}]}] unless data entity @s HandItems[0].tag.display.Name run function _libament:present/cancel_rename
execute if entity @s[tag=!global.ignore,nbt={HandItems:[{id:"minecraft:paper"}]}] if data entity @s HandItems[0].tag.display.Name run function _libament:present/rename
data modify entity @s[tag=!global.ignore] HandItems set value []
