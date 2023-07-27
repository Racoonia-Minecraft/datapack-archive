#declare storage racoonia:phantomwings

data modify storage racoonia:phantomwings enchantments set value {elytra:[],chestplate:[]}
data modify storage racoonia:phantomwings enchantments.elytra set from entity @e[type=item,tag=!phantomwings.spawned,nbt={Item: {id: "minecraft:elytra", Count: 1b}},sort=nearest,limit=1] Item.tag.Enchantments
data modify storage racoonia:phantomwings enchantments.chestplate set from entity @s Item.tag.Enchantments
execute store result score input2 racoonia.math run data get storage racoonia:phantomwings enchantments.elytra
scoreboard players set input1 racoonia.math 0
function _phantomwings:craft/enchant_loop
execute as @e[type=item,tag=phantomwings.spawned,nbt={Item: {id: "minecraft:elytra", Count: 1b}},sort=nearest,limit=1] run function _phantomwings:craft/copy_tags
tag @e[type=item,tag=!phantomwings.spawned,nbt={Item: {id: "minecraft:elytra", Count: 1b}},sort=nearest,limit=1] add phantomwings.spawned
kill @s[tag=!global.ignore,tag=!global.ignore.kill]
