#declare entity trifles

tag @s add trifles_dice_rolling
execute store result score @s trifles.diceAnimation run scoreboard players get trifles trifles.diceAnimation
