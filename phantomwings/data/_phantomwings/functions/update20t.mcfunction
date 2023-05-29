execute as @e[type=item, nbt=!{Item:{tag:{phantomwings:{is_wing:1b}}}}, nbt={Item:{id:"minecraft:elytra", Count:1b}}] at @s run function _phantomwings:craft/craft

schedule function _phantomwings:update20t 20t
