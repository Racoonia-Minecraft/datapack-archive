execute at @e[type=interaction, scores={trifles.block_button_off=2}] if block ~1 ~ ~ target[power=15] run setblock ~1 ~ ~ target[power=0]
execute at @e[type=interaction, scores={trifles.block_button_off=2}] if block ~-1 ~ ~ target[power=15] run setblock ~-1 ~ ~ target[power=0]
execute at @e[type=interaction, scores={trifles.block_button_off=2}] if block ~ ~ ~1 target[power=15] run setblock ~ ~ ~1 target[power=0]
execute at @e[type=interaction, scores={trifles.block_button_off=2}] if block ~ ~ ~-1 target[power=15] run setblock ~ ~ ~-1 target[power=0]
execute at @e[type=interaction, scores={trifles.block_button_off=2}] if block ~ ~1 ~ target[power=15] run setblock ~ ~1 ~ target[power=0]
execute at @e[type=interaction, scores={trifles.block_button_off=2}] if block ~ ~-1 ~ target[power=15] run setblock ~ ~-1 ~ target[power=0]
execute at @e[type=interaction, scores={trifles.block_button_off=2}] run playsound minecraft:block.stone_button.click_off block @a ~ ~ ~ 0.5

tag @e[type=interaction, scores={trifles.block_button_off=2}] remove trifles.block_button_off
