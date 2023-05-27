execute if score @s customModelData matches 10000.. run function _opendata:custom_model_data/set
execute if score @s customModelData matches ..-1 run function _opendata:custom_model_data/remove
execute if score @s customModelData matches 0..9999 run function _opendata:custom_model_data/fail
