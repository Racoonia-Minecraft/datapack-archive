execute if block ~ ~ ~ stone_button if entity @e[type=interaction,tag=trifles.block_interaction,distance=..1] if block ~ ~ ~ stone_button run function _trifles:interaction_block/fail
execute if block ~ ~ ~ stone_button unless entity @e[type=interaction,tag=trifles.block_interaction,distance=..1] unless block ~ ~ ~ stone_button run function _trifles:interaction_block/fail
execute if block ~ ~ ~ stone_button if entity @e[type=interaction,tag=trifles.block_interaction,distance=..1] unless block ~ ~ ~ stone_button run function _trifles:interaction_block/fail
execute if block ~ ~ ~ stone_button unless entity @e[type=interaction,tag=trifles.block_interaction,distance=..1] if block ~ ~ ~ stone_button run function _trifles:block_button/succsess

execute if block ~ ~ ~ lever if entity @e[type=interaction,tag=trifles.block_interaction,distance=..1] if block ~ ~ ~ lever run function _trifles:interaction_block/fail
execute if block ~ ~ ~ lever unless entity @e[type=interaction,tag=trifles.block_interaction,distance=..1] unless block ~ ~ ~ lever run function _trifles:interaction_block/fail
execute if block ~ ~ ~ lever if entity @e[type=interaction,tag=trifles.block_interaction,distance=..1] unless block ~ ~ ~ lever run function _trifles:interaction_block/fail
execute if block ~ ~ ~ lever unless entity @e[type=interaction,tag=trifles.block_interaction,distance=..1] if block ~ ~ ~ lever run function _trifles:block_lever/succsess

kill @s
