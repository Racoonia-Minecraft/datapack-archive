execute as @a[scores={customModelData=1..}] run function _opendata:custom_model_data/handle
execute as @a[scores={customModelData=..-1}] run function _opendata:custom_model_data/handle
scoreboard players reset @a[tag=!global.ignore] customModelData
scoreboard players enable @a[tag=!global.ignore] customModelData

schedule function _opendata:update20t 20t
