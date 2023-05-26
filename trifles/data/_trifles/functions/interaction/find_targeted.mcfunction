scoreboard players set #bool racoonia.math 0
execute on target store result score #bool racoonia.math if entity @s[tag=this]

execute if score #bool racoonia.math matches 1 run function _trifles:interaction/handle_targeted
