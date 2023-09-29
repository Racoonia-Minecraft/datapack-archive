#declare function random:uniform
#declare entity #chance
#declare entity #min
#declare entity #max
#declare entity #out

scoreboard players set $min random 1
scoreboard players set $max random 25
function random:uniform

execute if score $out random matches 1..10 run function _trifles:bible/normal/1-10
execute if score $out random matches 11..20 run function _trifles:bible/normal/11-20
execute if score $out random matches 21..30 run function _trifles:bible/normal/21-30
