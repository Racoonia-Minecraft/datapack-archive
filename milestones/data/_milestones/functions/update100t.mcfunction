# AFK Milestone
scoreboard players add @a[tag=racooniaserver.afk] milestones.afkTime 5
advancement grant @a[scores={milestones.afkTime=1..}] until milestones:afk/teaser
advancement grant @a[scores={milestones.afkTime=2..}] until milestones:afk/bronze
advancement grant @a[scores={milestones.afkTime=3..}] until milestones:afk/silver
advancement grant @a[scores={milestones.afkTime=4..}] until milestones:afk/gold

# Build Milestone
advancement grant @a[scores={milestones.blocksPlaced=1..}] until milestones:build/teaser
advancement grant @a[scores={milestones.blocksPlaced=2..}] until milestones:build/bronze
advancement grant @a[scores={milestones.blocksPlaced=3..}] until milestones:build/silver
advancement grant @a[scores={milestones.blocksPlaced=4..}] until milestones:build/gold

# Craft Milestone

# Death Milestone
advancement grant @a[scores={milestones.deaths=1..}] until milestones:die/teaser
advancement grant @a[scores={milestones.deaths=2..}] until milestones:die/bronze
advancement grant @a[scores={milestones.deaths=3..}] until milestones:die/silver
advancement grant @a[scores={milestones.deaths=4..}] until milestones:die/gold

# Eat Milestone
advancement grant @a[scores={milestones.eaten=1..}] until milestones:eat/teaser
advancement grant @a[scores={milestones.eaten=2..}] until milestones:eat/bronze
advancement grant @a[scores={milestones.eaten=3..}] until milestones:eat/silver
advancement grant @a[scores={milestones.eaten=4..}] until milestones:eat/gold

# Enchant Milestone
advancement grant @a[scores={milestones.enchanted=1..}] until milestones:enchant/teaser
advancement grant @a[scores={milestones.enchanted=2..}] until milestones:enchant/bronze
advancement grant @a[scores={milestones.enchanted=3..}] until milestones:enchant/silver
advancement grant @a[scores={milestones.enchanted=4..}] until milestones:enchant/gold

# Fly Milestone
advancement grant @a[scores={milestones.fly=1..}] until milestones:fly/teaser
advancement grant @a[scores={milestones.fly=2..}] until milestones:fly/bronze
advancement grant @a[scores={milestones.fly=3..}] until milestones:fly/silver
advancement grant @a[scores={milestones.fly=4..}] until milestones:fly/gold

# Kill Milestone
advancement grant @a[scores={milestones.kill=1..}] until milestones:kill/teaser
advancement grant @a[scores={milestones.kill=2..}] until milestones:kill/bronze
advancement grant @a[scores={milestones.kill=3..}] until milestones:kill/silver
advancement grant @a[scores={milestones.kill=4..}] until milestones:kill/gold

# Mine Milestone

# Play Milestone
execute as @a run function _milestones:active_time
advancement grant @a[scores={milestones.activeTime=1..}] until milestones:play/teaser
advancement grant @a[scores={milestones.activeTime=2..}] until milestones:play/bronze
advancement grant @a[scores={milestones.activeTime=3..}] until milestones:play/silver
advancement grant @a[scores={milestones.activeTime=4..}] until milestones:play/gold

# Villager Milestone
advancement grant @a[scores={milestones.villagerTrades=1..}] until milestones:villager/teaser
advancement grant @a[scores={milestones.villagerTrades=2..}] until milestones:villager/bronze
advancement grant @a[scores={milestones.villagerTrades=3..}] until milestones:villager/silver
advancement grant @a[scores={milestones.villagerTrades=4..}] until milestones:villager/gold

# Walk Milestone
scoreboard players set @a milestones.walk 0
execute as @a run function _milestones:walk_distance
advancement grant @a[scores={milestones.walk=1000..}] until milestones:walk/teaser
advancement grant @a[scores={milestones.walk=2000..}] until milestones:walk/bronze
advancement grant @a[scores={milestones.walk=3000..}] until milestones:walk/silver
advancement grant @a[scores={milestones.walk=4000..}] until milestones:walk/gold

# XP Milestone


# Loop
schedule function _milestones:update100t 100t
