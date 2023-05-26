# Right click detection
execute as @a[scores={trifles.fungusClick=1..}] run function _trifles:click_fungus
scoreboard players reset @a trifles.fungusClick

# Pocket cat
execute as @a[scores={trifles.hasPocketcat=1..}] unless score @s trifles.pocketcatDisabled matches 1 at @s run function _trifles:pocketcat/handle
scoreboard players remove @a[scores={trifles.pocketcatCooldown=1..}] trifles.pocketcatCooldown 1

# Mega Stew
execute as @a[advancements={_trifles:megastew_detector=true}] at @s run function _trifles:megastew/handle
advancement revoke @a only _trifles:megastew_detector

schedule function _trifles:update10t 10t
