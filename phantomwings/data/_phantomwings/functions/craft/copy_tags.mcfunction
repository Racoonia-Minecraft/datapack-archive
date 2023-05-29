#declare storage phantomwings

data modify entity @s Item.tag.Damage set from entity @e[type=item,tag=!phantomwings.spawned,nbt={Item: {id: "minecraft:elytra", Count: 1b}},sort=nearest,limit=1] Item.tag.Damage
data modify entity @s Item.tag.Enchantments set from storage phantomwings enchantments.chestplate
