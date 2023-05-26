#declare function racooniacore:coin_toss
#declare objective racoonia.coinToss dummy

function racooniacore:coin_toss
execute if score @s racoonia.coinToss matches 0 run playsound minecraft:entity.cat.ambient master @s ~ ~ ~ 1 1
execute if score @s racoonia.coinToss matches 1 run playsound minecraft:entity.cat.hiss master @s ~ ~ ~ 1 1
scoreboard players set @s trifles.pocketcatCooldown 7
