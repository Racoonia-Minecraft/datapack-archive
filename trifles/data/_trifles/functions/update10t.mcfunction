# Right click detection
execute as @a[scores={trifles.fungusClick=1..}] run function _trifles:click_fungus
scoreboard players reset @a trifles.fungusClick

# Pocket cat
execute as @a[scores={trifles.hasPocketCat=1..}] unless score @s trifles.pocketCatDisabled matches 1 at @s run function _trifles:pocketcat/handle
scoreboard players remove @a[scores={trifles.pocketCatCooldown=1..}] trifles.pocketCatCooldown 1

# Mega Beef
execute as @a[advancements={_trifles:megabeef_detector=true}] at @s run function _trifles:megabeef/handle
advancement revoke @a only _trifles:megabeef_detector

schedule function _trifles:update10t 10t
