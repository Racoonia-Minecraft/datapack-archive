execute as @e[type=armor_stand,tag=trifles.dice_rolling] run function _trifles:dice/rolling

execute unless entity @e[type=armor_stand,tag=trifles.dice_rolling] run scoreboard players set trifles trifles.animationLoop 0
execute if entity @e[type=armor_stand,tag=trifles.dice_rolling] run schedule function _trifles:dice/animation/loop 2t
