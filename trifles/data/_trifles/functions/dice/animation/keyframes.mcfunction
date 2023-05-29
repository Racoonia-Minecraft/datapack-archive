# animation
execute if score @s trifles.diceAnimation matches 55 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 54 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 53 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 52 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 51 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 50 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 49 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 48 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 47 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 46 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 45 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 44 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 43 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 42 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 40 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 36 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 30 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 22 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 12 run data merge entity @s 
execute if score @s trifles.diceAnimation matches 1 run function _trifles:dice/roll_result

# sound
execute if score @s trifles.diceAnimation matches 42..55 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 3
execute if score @s trifles.diceAnimation matches 40 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 3
execute if score @s trifles.diceAnimation matches 36 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 3
execute if score @s trifles.diceAnimation matches 30 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 3
execute if score @s trifles.diceAnimation matches 22 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 3
execute if score @s trifles.diceAnimation matches 12 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 3
execute if score @s trifles.diceAnimation matches 1 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 3
