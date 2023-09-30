#declare objective racoonia.random
#declare entity #bible

execute store result entity #bible racoonia.random run random value 1..61

execute if score $bible racoonia.random matches 1..10 run function _trifles:bible/special/1-10
execute if score $bible racoonia.random matches 11..20 run function _trifles:bible/special/11-20
execute if score $bible racoonia.random matches 21..30 run function _trifles:bible/special/21-30
execute if score $bible racoonia.random matches 31..40 run function _trifles:bible/special/31-40
execute if score $bible racoonia.random matches 41..50 run function _trifles:bible/special/41-50
execute if score $bible racoonia.random matches 51..60 run function _trifles:bible/special/51-60
execute if score $bible racoonia.random matches 61..70 run function _trifles:bible/special/61-70
