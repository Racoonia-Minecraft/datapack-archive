    # Play time in ticks
scoreboard objectives add milestones.playtime custom:play_time


# Milestone scoreboards
    # AFK time is in seconds
scoreboard objectives add milestones.afkTime dummy
    # Amount of blocks placed
scoreboard objectives add milestones.blocksPlaced dummy
    # Items crafted (missing)

    # Times died
scoreboard objectives add milestones.deaths deathCount
    # Amount of food eaten
scoreboard objectives add milestones.eaten dummy
    # Amount of items enchanted
scoreboard objectives add milestones.enchanted dummy
    # Distance traveled by elytra in cm
scoreboard objectives add milestones.fly custom:aviate_one_cm
    # Amount of mobs killed
scoreboard objectives add milestones.kill custom:mob_kills
    # Amount of stone blocks mined (missing)

    # Active play time in seconds
scoreboard objectives add milestones.activeTime dummy
    # Amount of villager trades
scoreboard objectives add milestones.villagerTrdes minecraft.custom:minecraft.traded_with_villager
    # Distance traveled by walking in cm (missing)

    # XP points gained (missing)


function _milestones:update100t
