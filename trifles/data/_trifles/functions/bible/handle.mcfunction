#declare predicate random:score_percentage
#declare objective random
#declare tag trifles.special_verse

tag @s remove trifles.special_verse
scoreboard players set $chance random 15
execute if predicate random:score_percentage run tag @s add trifles.special_verse
execute unless entity @s[tag=trifles.special_verse] run function _trifles:bible/normal_verse
execute if entity @s[tag=trifles.special_verse] run function _trifles:bible/special_verse
tag @s remove trifles.special_verse
