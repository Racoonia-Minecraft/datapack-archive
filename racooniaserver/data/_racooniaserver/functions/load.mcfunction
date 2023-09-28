#declare storage racoonia:datapacks
#declare entity $weak_creepers
#declare entity $block_end

# Setup Scoreboard
scoreboard objectives add racooniaserver.deathCount deathCount

# Setup AFK Detection
scoreboard objectives add racooniaserver.afkTimer dummy

scoreboard objectives add racooniaserver.climb minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add racooniaserver.crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add racooniaserver.fly minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add racooniaserver.sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add racooniaserver.swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add racooniaserver.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add racooniaserver.walk_on_water minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add racooniaserver.walk_under_water minecraft.custom:minecraft.walk_under_water_one_cm
scoreboard objectives add racooniaserver.boat minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add racooniaserver.elytra minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add racooniaserver.horse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add racooniaserver.minecart minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add racooniaserver.pig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add racooniaserver.strider minecraft.custom:minecraft.strider_one_cm
scoreboard objectives add racooniaserver.jump minecraft.custom:minecraft.jump
scoreboard objectives add racooniaserver.leave minecraft.custom:minecraft.leave_game

scoreboard objectives add racooniaserver.x_rotation dummy
scoreboard objectives add racooniaserver.y_rotation dummy

# Setup Settings
scoreboard objectives add racooniaserver.setting dummy
execute unless score $weak_creepers racooniaserver.setting matches 1 run scoreboard players set $weak_creepers racooniaserver.setting 0
execute unless score $block_end racooniaserver.setting matches 1 run scoreboard players set $block_end racooniaserver.setting 0
execute unless entity @e[type=marker,tag=racooniaserver.spawnpoint] run function racooniaserver:setspawn

# Registration
data merge storage racoonia:datapacks {racooniaserver:{version:"1.1",version_number:3}}

# Start Loop
schedule function _racooniaserver:main 1t
