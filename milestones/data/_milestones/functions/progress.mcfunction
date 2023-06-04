# Heading
tellraw @s {"text":"Milestones Progress:","bold":true,"underlined":true,"color":"gold"}

# AFK
scoreboard players set @s milestones.target 1
scoreboard players set @s[scores={milestones.afkTime=1..}] milestones.target 2
scoreboard players set @s[scores={milestones.afkTime=2..}] milestones.target 3
scoreboard players set @s[scores={milestones.afkTime=3..}] milestones.target 4
execute store result score @s milestones.progress run scoreboard players get @s milestones.afkTime
function _milestones:progress_percentage
tellraw @s ["",{"text":"AFK Time: ","color":"gray"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]

# Build
scoreboard players set @s milestones.target 1
scoreboard players set @s[scores={milestones.blocksPlaced=1..}] milestones.target 2
scoreboard players set @s[scores={milestones.blocksPlaced=2..}] milestones.target 3
scoreboard players set @s[scores={milestones.blocksPlaced=3..}] milestones.target 4
execute store result score @s milestones.progress run scoreboard players get @s milestones.blocksPlaced
function _milestones:progress_percentage
tellraw @s ["",{"text":"Blocks Placed: ","color":"gray"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]

# Die
scoreboard players set @s milestones.target 1
scoreboard players set @s[scores={milestones.deaths=1..}] milestones.target 2
scoreboard players set @s[scores={milestones.deaths=2..}] milestones.target 3
scoreboard players set @s[scores={milestones.deaths=3..}] milestones.target 4
execute store result score @s milestones.progress run scoreboard players get @s milestones.deaths
function _milestones:progress_percentage
tellraw @s ["",{"text":"Times Died: ","color":"gray"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]

# Eat
scoreboard players set @s milestones.target 1
scoreboard players set @s[scores={milestones.eaten=1..}] milestones.target 2
scoreboard players set @s[scores={milestones.eaten=2..}] milestones.target 3
scoreboard players set @s[scores={milestones.eaten=3..}] milestones.target 4
execute store result score @s milestones.progress run scoreboard players get @s milestones.eaten
function _milestones:progress_percentage
tellraw @s ["",{"text":"Food Eaten: ","color":"gray"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]

# Enchant
scoreboard players set @s milestones.target 1
scoreboard players set @s[scores={milestones.enchanted=1..}] milestones.target 2
scoreboard players set @s[scores={milestones.enchanted=2..}] milestones.target 3
scoreboard players set @s[scores={milestones.enchanted=3..}] milestones.target 4
execute store result score @s milestones.progress run scoreboard players get @s milestones.enchanted
function _milestones:progress_percentage
tellraw @s ["",{"text":"Items Enchanted: ","color":"gray"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]

# Fly
scoreboard players set @s milestones.target 1
scoreboard players set @s[scores={milestones.fly=1..}] milestones.target 2
scoreboard players set @s[scores={milestones.fly=2..}] milestones.target 3
scoreboard players set @s[scores={milestones.fly=3..}] milestones.target 4
execute store result score @s milestones.progress run scoreboard players get @s milestones.fly
function _milestones:progress_percentage
tellraw @s ["",{"text":"Flight Distance: ","color":"gray"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]

# Kill
scoreboard players set @s milestones.target 1
scoreboard players set @s[scores={milestones.kill=1..}] milestones.target 2
scoreboard players set @s[scores={milestones.kill=2..}] milestones.target 3
scoreboard players set @s[scores={milestones.kill=3..}] milestones.target 4
execute store result score @s milestones.progress run scoreboard players get @s milestones.kill
function _milestones:progress_percentage
tellraw @s ["",{"text":"Mobs Killed: ","color":"gray"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]

# Mine
scoreboard players set @s milestones.target 1
scoreboard players set @s[scores={milestones.mine=1..}] milestones.target 2
scoreboard players set @s[scores={milestones.mine=2..}] milestones.target 3
scoreboard players set @s[scores={milestones.mine=3..}] milestones.target 4
execute store result score @s milestones.progress run scoreboard players get @s milestones.mine
function _milestones:progress_percentage
tellraw @s ["",{"text":"Stone Mined: ","color":"gray"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]

# Active
scoreboard players set @s milestones.target 1
scoreboard players set @s[scores={milestones.activeTime=1..}] milestones.target 2
scoreboard players set @s[scores={milestones.activeTime=2..}] milestones.target 3
scoreboard players set @s[scores={milestones.activeTime=3..}] milestones.target 4
execute store result score @s milestones.progress run scoreboard players get @s milestones.activeTime
function _milestones:progress_percentage
tellraw @s ["",{"text":"Active Time: ","color":"gray"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]

# Villager
scoreboard players set @s milestones.target 1
scoreboard players set @s[scores={milestones.villagerTrades=1..}] milestones.target 2
scoreboard players set @s[scores={milestones.villagerTrades=2..}] milestones.target 3
scoreboard players set @s[scores={milestones.villagerTrades=3..}] milestones.target 4
execute store result score @s milestones.progress run scoreboard players get @s milestones.villagerTrades
function _milestones:progress_percentage
tellraw @s ["",{"text":"Villager Trades: ","color":"gray"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]

# Walk
scoreboard players set @s milestones.target 1
scoreboard players set @s[scores={milestones.walk=1..}] milestones.target 2
scoreboard players set @s[scores={milestones.walk=2..}] milestones.target 3
scoreboard players set @s[scores={milestones.walk=3..}] milestones.target 4
execute store result score @s milestones.progress run scoreboard players get @s milestones.walk
function _milestones:progress_percentage
tellraw @s ["",{"text":"Walk Distance: ","color":"gray"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]
