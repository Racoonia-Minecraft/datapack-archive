execute store result score game racooniaserver.time run time query gametime
# day seconds
execute store result score input2 racoonia.math run time query daytime
scoreboard players set input1 racoonia.math 36
scoreboard players operation input2 racoonia.math *= input1 racoonia.math
scoreboard players set input1 racoonia.math 10
scoreboard players operation input2 racoonia.math /= input1 racoonia.math
scoreboard players set input1 racoonia.math 21600
scoreboard players operation input2 racoonia.math += input1 racoonia.math
scoreboard players set input1 racoonia.math 86400
scoreboard players operation input2 racoonia.math %= input1 racoonia.math
# day minutes
scoreboard players set input1 racoonia.math 60
scoreboard players operation result racoonia.math = input2 racoonia.math
scoreboard players operation result racoonia.math /= input1 racoonia.math
# seconds
scoreboard players operation input2 racoonia.math %= input1 racoonia.math
scoreboard players operation seconds racooniaserver.time = input2 racoonia.math
# day hours
scoreboard players operation input2 racoonia.math = result racoonia.math
scoreboard players operation input2 racoonia.math /= input1 racoonia.math
# minutes
scoreboard players operation result racoonia.math %= input1 racoonia.math
scoreboard players operation minutes racooniaserver.time = result racoonia.math
# hours
scoreboard players operation input2 racoonia.math %= input1 racoonia.math
scoreboard players operation hours racooniaserver.time = input2 racoonia.math
