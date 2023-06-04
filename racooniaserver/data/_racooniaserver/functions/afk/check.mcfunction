execute if score @s racooniaserver.climb matches 1.. run function _racooniaserver:afk/active
execute if score @s racooniaserver.crouch matches 1.. run function _racooniaserver:afk/active
execute if score @s racooniaserver.fly matches 1.. run function _racooniaserver:afk/active
execute if score @s racooniaserver.sprint matches 1.. run function _racooniaserver:afk/active
execute if score @s racooniaserver.swim matches 1.. run function _racooniaserver:afk/active
execute if score @s racooniaserver.walk matches 1.. run function _racooniaserver:afk/active
execute if score @s racooniaserver.walk_on_water matches 1.. run function _racooniaserver:afk/active
execute if score @s racooniaserver.walk_under_water matches 1.. run function _racooniaserver:afk/active
execute if score @s racooniaserver.boat matches 1.. run function _racooniaserver:afk/active
execute if score @s racooniaserver.elytra matches 1.. run function _racooniaserver:afk/active
execute if score @s racooniaserver.horse matches 1.. run function _racooniaserver:afk/active
execute if score @s racooniaserver.minecart matches 1.. run function _racooniaserver:afk/active
execute if score @s racooniaserver.pig matches 1.. run function _racooniaserver:afk/active
execute if score @s racooniaserver.strider matches 1.. run function _racooniaserver:afk/active
execute if score @s racooniaserver.jump matches 1.. run function _racooniaserver:afk/active
execute if score @s racooniaserver.leave matches 1.. run function _racooniaserver:afk/active

execute if entity @s[tag=racooniaserver.afk] run function _racooniaserver:afk/check_rotation

execute if score @s racooniaserver.afkTimer matches 60.. at @s run function _racooniaserver:afk/afk
