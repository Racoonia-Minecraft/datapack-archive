# AFK Milestone
scoreboard players add @a[tag=racooniaserver.afk] milestones.afkTime 5
advancement grant @a[scores={milestones.afkTime=4..}] until milestones:afk/gold
advancement grant @a[scores={milestones.afkTime=3..}] until milestones:afk/silver
advancement grant @a[scores={milestones.afkTime=2..}] until milestones:afk/bronze
advancement grant @a[scores={milestones.afkTime=1..}] until milestones:afk/teaser

# Build Milestone
advancement grant @a[scores={milestones.blocksPlaced=4..}] until milestones:build/gold
advancement grant @a[scores={milestones.blocksPlaced=3..}] until milestones:build/silver
advancement grant @a[scores={milestones.blocksPlaced=2..}] until milestones:build/bronze
advancement grant @a[scores={milestones.blocksPlaced=1..}] until milestones:build/teaser

# Craft Milestone

# Death Milestone
advancement grant @a[scores={milestones.deaths=4..}] until milestones:die/gold
advancement grant @a[scores={milestones.deaths=3..}] until milestones:die/silver
advancement grant @a[scores={milestones.deaths=2..}] until milestones:die/bronze
advancement grant @a[scores={milestones.deaths=1..}] until milestones:die/teaser

# Eat Milestone
advancement grant @a[scores={milestones.eaten=4..}] until milestones:eat/gold
advancement grant @a[scores={milestones.eaten=3..}] until milestones:eat/silver
advancement grant @a[scores={milestones.eaten=2..}] until milestones:eat/bronze
advancement grant @a[scores={milestones.eaten=1..}] until milestones:eat/teaser

# Enchant Milestone
advancement grant @a[scores={milestones.enchanted=4..}] until milestones:enchant/gold
advancement grant @a[scores={milestones.enchanted=3..}] until milestones:enchant/silver
advancement grant @a[scores={milestones.enchanted=2..}] until milestones:enchant/bronze
advancement grant @a[scores={milestones.enchanted=1..}] until milestones:enchant/teaser

# Fly Milestone
advancement grant @a[scores={milestones.fly=4..}] until milestones:fly/gold
advancement grant @a[scores={milestones.fly=3..}] until milestones:fly/silver
advancement grant @a[scores={milestones.fly=2..}] until milestones:fly/bronze
advancement grant @a[scores={milestones.fly=1..}] until milestones:fly/teaser

# Kill Milestone
advancement grant @a[scores={milestones.kill=4..}] until milestones:kill/gold
advancement grant @a[scores={milestones.kill=3..}] until milestones:kill/silver
advancement grant @a[scores={milestones.kill=2..}] until milestones:kill/bronze
advancement grant @a[scores={milestones.kill=1..}] until milestones:kill/teaser

# Mine Milestone
execute as @a run function _milestones:mined
scoreboard players reset @a milestones.mine.stone
scoreboard players reset @a milestones.mine.granite
scoreboard players reset @a milestones.mine.diorite
scoreboard players reset @a milestones.mine.andesite
scoreboard players reset @a milestones.mine.calcite
scoreboard players reset @a milestones.mine.tuff
scoreboard players reset @a milestones.mine.dripstone
scoreboard players reset @a milestones.mine.deepslate
scoreboard players reset @a milestones.mine.obsidian
advancement grant @a[scores={milestones.mine=4..}] until milestones:mine/gold
advancement grant @a[scores={milestones.mine=3..}] until milestones:mine/silver
advancement grant @a[scores={milestones.mine=2..}] until milestones:mine/bronze
advancement grant @a[scores={milestones.mine=1..}] until milestones:mine/teaser

# Play Milestone
execute as @a run function _milestones:active_time
advancement grant @a[scores={milestones.activeTime=4..}] until milestones:play/gold
advancement grant @a[scores={milestones.activeTime=3..}] until milestones:play/silver
advancement grant @a[scores={milestones.activeTime=2..}] until milestones:play/bronze
advancement grant @a[scores={milestones.activeTime=1..}] until milestones:play/teaser

# Villager Milestone
advancement grant @a[scores={milestones.villagerTrades=4..}] until milestones:villager/gold
advancement grant @a[scores={milestones.villagerTrades=3..}] until milestones:villager/silver
advancement grant @a[scores={milestones.villagerTrades=2..}] until milestones:villager/bronze
advancement grant @a[scores={milestones.villagerTrades=1..}] until milestones:villager/teaser

# Walk Milestone
scoreboard players set @a milestones.walk 0
execute as @a run function _milestones:walk_distance
advancement grant @a[scores={milestones.walk=4000..}] until milestones:walk/gold
advancement grant @a[scores={milestones.walk=3000..}] until milestones:walk/silver
advancement grant @a[scores={milestones.walk=2000..}] until milestones:walk/bronze
advancement grant @a[scores={milestones.walk=1000..}] until milestones:walk/teaser

# Loop
schedule function _milestones:update100t 100t
