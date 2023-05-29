# Mega Stew
scoreboard players remove @a[scores={trifles.megastewCooldown=1..}] trifles.megastewCooldown 1

# Pocket cat
execute as @a[scores={trifles.hasPocketcat=1..}] unless score @s trifles.pocketcatDisabled matches 1 at @s run function _trifles:pocketcat/handle
scoreboard players remove @a[scores={trifles.pocketcatCooldown=1..}] trifles.pocketcatCooldown 1

# Dice
execute as @e[tag=trifles.dice_spawn] run function _trifles:dice/spawn
execute as @e[tag=trifles.dice_rolling] run function _trifles:dice/rolling

# Right click detection
execute as @a[scores={trifles.fungusClick=1..}] run function _trifles:click/fungus
scoreboard players reset @a trifles.fungusClick
scoreboard players reset @a trifles.enderEyeHoldClick

schedule function _trifles:update20t 20t
