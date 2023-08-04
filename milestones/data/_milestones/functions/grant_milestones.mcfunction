# AFK Milestone
scoreboard players add @a[tag=racooniaserver.afk] milestones.afkTime 5
execute as @a run function _milestones:afk_time
advancement grant @a[scores={milestones.afk=3000..}] until milestones:afk/gold
advancement grant @a[scores={milestones.afk=900..}] until milestones:afk/silver
advancement grant @a[scores={milestones.afk=300..}] until milestones:afk/bronze
advancement grant @a[scores={milestones.afk=60..}] until milestones:afk/teaser

# Death Milestone
advancement grant @a[scores={milestones.deaths=27..}] until milestones:die/gold
advancement grant @a[scores={milestones.deaths=9..}] until milestones:die/silver
advancement grant @a[scores={milestones.deaths=3..}] until milestones:die/bronze
advancement grant @a[scores={milestones.deaths=1..}] until milestones:die/teaser

# Eat Milestone
advancement grant @a[scores={milestones.eaten=3000..}] until milestones:eat/gold
advancement grant @a[scores={milestones.eaten=1000..}] until milestones:eat/silver
advancement grant @a[scores={milestones.eaten=100..}] until milestones:eat/bronze
advancement grant @a[scores={milestones.eaten=10..}] until milestones:eat/teaser

# Enchant Milestone
advancement grant @a[scores={milestones.enchanted=200..}] until milestones:enchant/gold
advancement grant @a[scores={milestones.enchanted=50..}] until milestones:enchant/silver
advancement grant @a[scores={milestones.enchanted=20..}] until milestones:enchant/bronze
advancement grant @a[scores={milestones.enchanted=5..}] until milestones:enchant/teaser

# Fly Milestone
execute as @a run function _milestones:fly_distance
advancement grant @a[scores={milestones.fly=750000..}] until milestones:fly/gold
advancement grant @a[scores={milestones.fly=250000..}] until milestones:fly/silver
advancement grant @a[scores={milestones.fly=50000..}] until milestones:fly/bronze
advancement grant @a[scores={milestones.fly=5000..}] until milestones:fly/teaser

# Kill Milestone
advancement grant @a[scores={milestones.kill=5000..}] until milestones:kill/gold
advancement grant @a[scores={milestones.kill=500..}] until milestones:kill/silver
advancement grant @a[scores={milestones.kill=50..}] until milestones:kill/bronze
advancement grant @a[scores={milestones.kill=5..}] until milestones:kill/teaser

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
advancement grant @a[scores={milestones.mine=50000..}] until milestones:mine/gold
advancement grant @a[scores={milestones.mine=20000..}] until milestones:mine/silver
advancement grant @a[scores={milestones.mine=5000..}] until milestones:mine/bronze
advancement grant @a[scores={milestones.mine=1000..}] until milestones:mine/teaser

# Play Milestone
execute as @a run function _milestones:active_time
advancement grant @a[scores={milestones.activeTime=7680..}] until milestones:play/gold
advancement grant @a[scores={milestones.activeTime=1920..}] until milestones:play/silver
advancement grant @a[scores={milestones.activeTime=480..}] until milestones:play/bronze
advancement grant @a[scores={milestones.activeTime=30..}] until milestones:play/teaser

# Villager Milestone
advancement grant @a[scores={milestones.villagerTrades=3000..}] until milestones:villager/gold
advancement grant @a[scores={milestones.villagerTrades=300..}] until milestones:villager/silver
advancement grant @a[scores={milestones.villagerTrades=30..}] until milestones:villager/bronze
advancement grant @a[scores={milestones.villagerTrades=3..}] until milestones:villager/teaser

# Walk Milestone
scoreboard players set @a milestones.walk 0
execute as @a run function _milestones:walk_distance
advancement grant @a[scores={milestones.walk=500000..}] until milestones:walk/gold
advancement grant @a[scores={milestones.walk=150000..}] until milestones:walk/silver
advancement grant @a[scores={milestones.walk=30000..}] until milestones:walk/bronze
advancement grant @a[scores={milestones.walk=1000..}] until milestones:walk/teaser

# Loop
schedule function _milestones:grant_milestones 100t
