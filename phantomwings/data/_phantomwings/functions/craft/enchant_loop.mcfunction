#declare storage racoonia:phantomwings

data modify storage racoonia:phantomwings enchantments.chestplate append from storage racoonia:phantomwings enchantments.elytra[0]
scoreboard players add input1 racoonia.math 1

execute if score input1 racoonia.math < input2 racoonia.math run function _phantomwings:craft/enchant_loop
