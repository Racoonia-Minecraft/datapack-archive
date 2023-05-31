#declare entity trifles

tag @s add trifles.dice_rolling
scoreboard players set @s trifles.diceAnimation 52
execute unless score trifles trifles.animationLoop matches 1 run function _trifles:dice/animation/start_loop
