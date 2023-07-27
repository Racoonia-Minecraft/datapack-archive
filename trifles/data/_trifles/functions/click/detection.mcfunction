execute as @a[scores={trifles.fungusClick=1..}] run function _trifles:click/fungus
scoreboard players reset @a trifles.fungusClick

schedule function _trifles:click/detection 5t
