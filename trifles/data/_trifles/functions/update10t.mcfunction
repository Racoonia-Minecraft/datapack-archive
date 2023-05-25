execute as @a[scores={trifles.fungusClick=1..}] run function _trifles:click_fungus
scoreboard players reset @a trifles.fungusClick
execute as @a[scores={trifles.hasPocketCat=1..}] unless score @s trifles.pocketCatDisabled matches 1 at @s run function _trifles:pocketcat/handle
scoreboard players remove @a[scores={trifles.pocketCatCooldown=1..}] trifles.pocketCatCooldown 1

schedule function _trifles:update10t 10t
