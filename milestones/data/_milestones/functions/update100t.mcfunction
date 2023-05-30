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

# Kill Milestone

# Mine Milestone

# Play Milestone

# Villager Milestone
advancement grant @a[scores={milestones.villagerTrades=1..}] until milestones:villager/teaser
advancement grant @a[scores={milestones.villagerTrades=2..}] until milestones:villager/bronze
advancement grant @a[scores={milestones.villagerTrades=3..}] until milestones:villager/silver
advancement grant @a[scores={milestones.villagerTrades=4..}] until milestones:villager/gold

# Walk Milestone

# XP Milestone


# Loop
schedule function _milestones:update100t 100t
