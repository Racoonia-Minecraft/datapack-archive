#declare function random:uniform
#declare entity $chance
#declare entity $min
#declare entity $max
#declare entity $out

scoreboard players set $min random 1
scoreboard players set $max random 50
function random:uniform

execute if score $out random matches 1..10 run function _trifles:bible/special/1-10
execute if score $out random matches 11..20 run function _trifles:bible/special/11-20
execute if score $out random matches 21..30 run function _trifles:bible/special/21-30
execute if score $out random matches 31..40 run function _trifles:bible/special/31-40
execute if score $out random matches 41..50 run function _trifles:bible/special/41-50
