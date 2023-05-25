#declare entity result

execute store result score result racoonia.math run data get entity @s Item.Count
scoreboard players remove result racoonia.math 1
execute store result entity @s Item.Count byte 1 run scoreboard players get result racoonia.math
