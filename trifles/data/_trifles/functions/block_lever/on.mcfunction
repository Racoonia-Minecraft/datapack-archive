execute if block ~1 ~ ~ target[power=0] run setblock ~1 ~ ~ target[power=15]
execute if block ~-1 ~ ~ target[power=0] run setblock ~-1 ~ ~ target[power=15]
execute if block ~ ~ ~1 target[power=0] run setblock ~ ~ ~1 target[power=15]
execute if block ~ ~ ~-1 target[power=0] run setblock ~ ~ ~-1 target[power=15]
execute if block ~ ~1 ~ target[power=0] run setblock ~ ~1 ~ target[power=15]
execute if block ~ ~-1 ~ target[power=0] run setblock ~ ~-1 ~ target[power=15]
playsound minecraft:block.stone_button.click_on block @a ~ ~ ~
