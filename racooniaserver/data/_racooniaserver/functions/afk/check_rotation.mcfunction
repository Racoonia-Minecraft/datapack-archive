#declare entity $racooniaserver

execute store result score $racooniaserver racooniaserver.x_rotation run data get entity @s Rotation[0]
execute store result score $racooniaserver racooniaserver.y_rotation run data get entity @s Rotation[1]

execute unless score $racooniaserver racooniaserver.x_rotation = @s racooniaserver.x_rotation run function _racooniaserver:afk/active
execute unless score $racooniaserver racooniaserver.y_rotation = @s racooniaserver.y_rotation run function _racooniaserver:afk/active
