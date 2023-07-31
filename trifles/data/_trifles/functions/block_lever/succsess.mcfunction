execute if block ~ ~ ~ lever[face=wall,facing=north] run summon interaction ~ ~ ~1 {Tags:["trifles.block_lever_interaction","trifles.block_lever_interaction_spawn","trifles.block_interaction"],width:1.05f,height:1.05f}
execute if block ~ ~ ~ lever[face=wall,facing=south] run summon interaction ~ ~ ~-1 {Tags:["trifles.block_lever_interaction","trifles.block_lever_interaction_spawn","trifles.block_interaction"],width:1.05f,height:1.05f}
execute if block ~ ~ ~ lever[face=wall,facing=west] run summon interaction ~1 ~ ~ {Tags:["trifles.block_lever_interaction","trifles.block_lever_interaction_spawn","trifles.block_interaction"],width:1.05f,height:1.05f}
execute if block ~ ~ ~ lever[face=wall,facing=east] run summon interaction ~-1 ~ ~ {Tags:["trifles.block_lever_interaction","trifles.block_lever_interaction_spawn","trifles.block_interaction"],width:1.05f,height:1.05f}
execute if block ~ ~ ~ lever[face=ceiling] run summon interaction ~ ~1 ~ {Tags:["trifles.block_lever_interaction","trifles.block_lever_interaction_spawn","trifles.block_interaction"],width:1.05f,height:1.05f}
execute if block ~ ~ ~ lever[face=floor] run summon interaction ~ ~-1 ~ {Tags:["trifles.block_lever_interaction","trifles.block_lever_interaction_spawn","trifles.block_interaction"],width:1.05f,height:1.05f}
execute if block ~ ~ ~ lever run setblock ~ ~ ~ air
execute as @e[tag=trifles.block_lever_interaction_spawn] at @s run function _trifles:block_lever/spawn_interaction
tellraw @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui] ["",{"text":"The Block Lever needs a adapter in form of a target block next to it","color":"yellow"}]

