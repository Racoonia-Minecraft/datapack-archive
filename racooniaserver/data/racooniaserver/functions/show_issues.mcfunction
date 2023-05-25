#declare objective racoonia.math
#declare entity input1

data modify storage racoonia:issue issues_copy set from storage racoonia:issue issues
execute store result score input2 racoonia.math run data get storage racoonia:issue issues_copy
scoreboard players set input1 racoonia.math 0
function _racooniaserver:issue/read
