#declare function random:uniform
#declare objective random
#declare entity $min
#declare entity $max
#declare entity $out

scoreboard players set $min random 1
scoreboard players set $max random 61
function random:uniform

execute if score $out random matches 1..10 run function _trifles:bible/1-10
execute if score $out random matches 11..20 run function _trifles:bible/11-20
execute if score $out random matches 21..30 run function _trifles:bible/21-30
execute if score $out random matches 31..40 run function _trifles:bible/31-40
execute if score $out random matches 41..50 run function _trifles:bible/41-50
execute if score $out random matches 51..60 run function _trifles:bible/51-60
execute if score $out random matches 61..70 run function _trifles:bible/61-70
execute if score $out random matches 71..80 run function _trifles:bible/71-80
