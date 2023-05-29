scoreboard players remove @s trifles.diceAnimation 1
execute if score @s trifles.diceAnimation matches ..0 run tag @s remove trifles.dice_rolling
execute as @s[tag=trifles.dice_rolling] run function _trifles:dice/animation
