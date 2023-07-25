# Scoreboards for milestones functionality
    # AFL time in seconds
    scoreboard objectives add milestones.afkTime dummy
    # Play time in ticks
    scoreboard objectives add milestones.playtime custom:play_time
    # Distance traveled flying with elytra in cm
    scoreboard objectives add milestones.aviate custom:aviate_one_cm
    # Distance traveled by walking, sprinting, sneaking or jumping in cm
        # Distance traveled by walking in cm
        scoreboard objectives add milestones.walk_only custom:walk_one_cm
        # Distance traveled by sprinting in cm
        scoreboard objectives add milestones.sprint custom:sprint_one_cm
        # Distance traveled by crouch in cm
        scoreboard objectives add milestones.crouch custom:crouch_one_cm
        # Distance traveled by jumping in cm
        scoreboard objectives add milestones.jump custom:fly_one_cm
    # Different types of stone mined
        # Amount of stone blocks mined
        scoreboard objectives add milestones.mine.stone mined:stone
        # Amount of deepslate blocks mined
        scoreboard objectives add milestones.mine.deepslate mined:deepslate
        # Amount of andesite mined
        scoreboard objectives add milestones.mine.andesite mined:andesite
        # Amount of diorite mined
        scoreboard objectives add milestones.mine.diorite mined:diorite
        # Amount of granite mined
        scoreboard objectives add milestones.mine.granite mined:granite
        # Amount of tuff mined
        scoreboard objectives add milestones.mine.tuff mined:tuff
        # Amount of dripstone mined
        scoreboard objectives add milestones.mine.dripstone mined:dripstone_block
        # Amount of calcite mined
        scoreboard objectives add milestones.mine.calcite mined:calcite
        # Amount of obsidian mined
        scoreboard objectives add milestones.mine.obsidian mined:obsidian

# Milestone scoreboards
    # AFK time is in minutes
    scoreboard objectives add milestones.afk dummy
    # Amount of blocks placed
    scoreboard objectives add milestones.blocksPlaced dummy
    # Times died
    scoreboard objectives add milestones.deaths deathCount
    # Amount of food eaten
    scoreboard objectives add milestones.eaten dummy
    # Amount of items enchanted
    scoreboard objectives add milestones.enchanted dummy
    # Distance traveled by elytra in blocks
    scoreboard objectives add milestones.fly dummy
    # Amount of mobs killed
    scoreboard objectives add milestones.kill custom:mob_kills
    # Amount of stone blocks mined
    scoreboard objectives add milestones.mine dummy
    # Active play time in minutes
    scoreboard objectives add milestones.activeTime dummy
    # Amount of villager trades
    scoreboard objectives add milestones.villagerTrades custom:traded_with_villager
    # Distance traveled by walking, sprinting or sneaking in blocks
    scoreboard objectives add milestones.walk dummy


# Scoreboards for trigger functionality
    scoreboard objectives add milestones.progress dummy
    scoreboard objectives add milestones.target dummy
    scoreboard objectives add milestones.percentage dummy

# Trigger scoreboard
    # Shows the progress of the player for each milestone
    scoreboard objectives add milestones_progress trigger

# Registration
data merge storage racoonia:datapacks {milestones:{installed:true,version:"1.0",version_number:1}}
schedule function _milestones:dep_check 1t
