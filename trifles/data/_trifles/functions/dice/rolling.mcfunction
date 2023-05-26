scoreboard players remove @s trifles.diceAnimation 1
execute if score @s trifles.diceAnimation matches ..0 run tag @s remove trifles_dice_rolling
execute if entity @s[tag=trifles_dice_rolling] run function _trifles:dice/animation
