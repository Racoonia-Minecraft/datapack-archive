#declare entity trifles

tag @s add trifles.dice_rolling
execute store result score @s trifles.diceAnimation run scoreboard players get trifles trifles.diceAnimation
