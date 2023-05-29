execute as @e[tag=trifles.dice_rolling] run function _trifles:dice/rolling

execute unless entity @e[tag=trifles.dice_rolling] run schedule function _trifles:dice/animation/loop 2t
