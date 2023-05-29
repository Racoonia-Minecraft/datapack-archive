#declare objective racoonia.math
#declare entity input2
#declare storage racooniaserver

tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] ["",{"score":{"name":"input1","objective":"racoonia.math"},"color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/data remove storage racooniaserver issues[]"}},{"text":" - ","color":"gray","clickEvent":{"action":"suggest_command","value":"/data remove storage racooniaserver issues[]"}},{"nbt":"issues_copy[0]","storage":"racooniaserver","clickEvent":{"action":"suggest_command","value":"/data remove storage racooniaserver issues[]"}}]
scoreboard players add input1 racoonia.math 1
data remove storage racooniaserver issues_copy[0]

execute if score input1 racoonia.math < input2 racoonia.math run function _racooniaserver:issue/read
