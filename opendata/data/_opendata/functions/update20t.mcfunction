execute as @a store success score @s opendata.bool run scoreboard players enable @s customModelData
execute as @a[scores={opendata.bool=1}] run function _opendata:custom_model_data/handle
scoreboard players reset @a customModelData
scoreboard players enable @a customModelData

schedule function _opendata:update20t 20t
