scoreboard objectives add customModelData trigger

# Setup milestone scoreboards
scoreboard objectives add milestones.afkTime dummy
scoreboard objectives add milestones.blocksPlaced dummy

scoreboard objectives add milestones.deaths deathCount
scoreboard objectives add milestones.eaten dummy
scoreboard objectives add milestones.enchanted dummy
scoreboard objectives add milestones.villagerTrades minecraft.custom:minecraft.traded_with_villager

function _milestones:update100t
