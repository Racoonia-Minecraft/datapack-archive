execute if block ~1 ~ ~ target[power=0] run setblock ~1 ~ ~ target[power=15]
execute if block ~-1 ~ ~ target[power=0] run setblock ~-1 ~ ~ target[power=15]
execute if block ~ ~ ~1 target[power=0] run setblock ~ ~ ~1 target[power=15]
execute if block ~ ~ ~-1 target[power=0] run setblock ~ ~ ~-1 target[power=15]
execute if block ~ ~1 ~ target[power=0] run setblock ~ ~1 ~ target[power=15]
execute if block ~ ~-1 ~ target[power=0] run setblock ~ ~-1 ~ target[power=15]
playsound minecraft:block.stone_button.click_on block @a ~ ~ ~

scoreboard players set @s trifles.block_button_off 1
schedule function _trifles:block_button/off_timer 10t
