scoreboard players add @s trifles.block_lever 1

execute as @s[scores={trifles.block_lever=1}] run function _trifles:block_lever/on
execute as @s[scores={trifles.block_lever=2}] run function _trifles:block_lever/off
