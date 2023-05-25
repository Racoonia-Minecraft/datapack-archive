#declare objective racoonia.math
#declare entity input2

tellraw @s ["",{"score":{"name":"input1","objective":"racoonia.math"},"color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/data remove storage racoonia:issue issues[]"}},{"text":" - ","color":"gray","clickEvent":{"action":"suggest_command","value":"/data remove storage racoonia:issue issues[]"}},{"nbt":"issues_copy[0]","storage":"racoonia:issue","clickEvent":{"action":"suggest_command","value":"/data remove storage racoonia:issue issues[]"}}]
scoreboard players add input1 racoonia.math 1
data remove storage racoonia:issue issues_copy[0]

execute if score input1 racoonia.math < input2 racoonia.math run function _racooniaserver:issue/read
