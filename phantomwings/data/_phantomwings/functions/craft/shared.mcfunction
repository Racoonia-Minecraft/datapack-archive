execute if data entity @e[type=item,tag=phantomwings.craft,sort=nearest,limit=1] Item.tag.CustomModelData run data modify entity @s Item.tag.CustomModelData set from entity @e[type=item,tag=phantomwings.craft,sort=nearest,limit=1] Item.tag.CustomModelData
data modify entity @s Item.tag.phantomwings.saved.Damage set from entity @e[type=item,tag=phantomwings.craft,sort=nearest,limit=1] Item.tag.Damage
kill @e[type=item,tag=phantomwings.craft,sort=nearest,limit=1]
