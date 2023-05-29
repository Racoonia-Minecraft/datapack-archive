#declare objective racoonia.math
#declare entity input1
#declare storage racooniaserver

data modify storage racooniaserver issues_copy set from storage racooniaserver issues
execute store result score input2 racoonia.math run data get storage racooniaserver issues_copy
scoreboard players set input1 racoonia.math 0
function _racooniaserver:issue/read
