tellraw @s {"text": ""}
# Heading
tellraw @s {"text":"Milestones Progress:","bold":true,"color":"gold"}

# AFK
scoreboard players set @s milestones.target 60
scoreboard players set @s[scores={milestones.afk=60..}] milestones.target 300
scoreboard players set @s[scores={milestones.afk=300..}] milestones.target 900
scoreboard players set @s[scores={milestones.afk=900..}] milestones.target 3000
execute store result score @s milestones.progress run scoreboard players get @s milestones.afk
function _milestones:progress_percentage
execute if score @s milestones.progress < @s milestones.target run tellraw @s ["",{"text":"AFK Time:           ","color":"white"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},{"text":"h","color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"},{"text":"h","color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score @s milestones.progress >= @s milestones.target run tellraw @s ["",{"text":"AFK Time:           ","color":"white"},{"text":"COMPLETE","color":"gold"}]

# Build
scoreboard players set @s milestones.target 20
scoreboard players set @s[scores={milestones.blocksPlaced=20..}] milestones.target 200
scoreboard players set @s[scores={milestones.blocksPlaced=200..}] milestones.target 2000
scoreboard players set @s[scores={milestones.blocksPlaced=2000..}] milestones.target 20000
execute store result score @s milestones.progress run scoreboard players get @s milestones.blocksPlaced
function _milestones:progress_percentage
execute if score @s milestones.progress < @s milestones.target run tellraw @s ["",{"text":"Blocks Placed:   ","color":"white"},{"text":" ","bold":true},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score @s milestones.progress >= @s milestones.target run tellraw @s ["",{"text":"Blocks Placed:   ","color":"white"},{"text":" ","bold":true},{"text":"COMPLETE","color":"gold"}]

# Die
scoreboard players set @s milestones.target 1
scoreboard players set @s[scores={milestones.deaths=1..}] milestones.target 3
scoreboard players set @s[scores={milestones.deaths=3..}] milestones.target 9
scoreboard players set @s[scores={milestones.deaths=9..}] milestones.target 27
execute store result score @s milestones.progress run scoreboard players get @s milestones.deaths
function _milestones:progress_percentage
execute if score @s milestones.progress < @s milestones.target run tellraw @s ["",{"text":"Times Died:         ","color":"white"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score @s milestones.progress >= @s milestones.target run tellraw @s ["",{"text":"Times Died:         ","color":"white"},{"text":"COMPLETE","color":"gold"}]

# Eat
scoreboard players set @s milestones.target 10
scoreboard players set @s[scores={milestones.eaten=10..}] milestones.target 100
scoreboard players set @s[scores={milestones.eaten=100..}] milestones.target 1000
scoreboard players set @s[scores={milestones.eaten=1000..}] milestones.target 3000
execute store result score @s milestones.progress run scoreboard players get @s milestones.eaten
function _milestones:progress_percentage
execute if score @s milestones.progress < @s milestones.target run tellraw @s ["",{"text":"Food Eaten:","color":"white"},{"text":"      ","bold":true},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score @s milestones.progress >= @s milestones.target run tellraw @s ["",{"text":"Food Eaten:","color":"white"},{"text":"      ","bold":true},{"text":"COMPLETE","color":"gold"}]

# Enchant
scoreboard players set @s milestones.target 5
scoreboard players set @s[scores={milestones.enchanted=5..}] milestones.target 20
scoreboard players set @s[scores={milestones.enchanted=20..}] milestones.target 50
scoreboard players set @s[scores={milestones.enchanted=50..}] milestones.target 200
execute store result score @s milestones.progress run scoreboard players get @s milestones.enchanted
function _milestones:progress_percentage
execute if score @s milestones.progress < @s milestones.target run tellraw @s ["",{"text":"Items Enchanted: ","color":"white"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score @s milestones.progress >= @s milestones.target run tellraw @s ["",{"text":"Items Enchanted: ","color":"white"},{"text":"COMPLETE","color":"gold"}]

# Fly
scoreboard players set @s milestones.target 1500
scoreboard players set @s[scores={milestones.fly=1500..}] milestones.target 50000
scoreboard players set @s[scores={milestones.fly=50000..}] milestones.target 250000
scoreboard players set @s[scores={milestones.fly=250000..}] milestones.target 750000
execute store result score @s milestones.progress run scoreboard players get @s milestones.fly
function _milestones:progress_percentage
execute if score @s milestones.progress < @s milestones.target run tellraw @s ["",{"text":"Flight Distance:  ","color":"white"},{"text":" ","bold":true},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score @s milestones.progress >= @s milestones.target run tellraw @s ["",{"text":"Flight Distance:  ","color":"white"},{"text":" ","bold":true},{"text":"COMPLETE","color":"gold"}]

# Kill
scoreboard players set @s milestones.target 5
scoreboard players set @s[scores={milestones.kill=5..}] milestones.target 50
scoreboard players set @s[scores={milestones.kill=50..}] milestones.target 500
scoreboard players set @s[scores={milestones.kill=500..}] milestones.target 5000
execute store result score @s milestones.progress run scoreboard players get @s milestones.kill
function _milestones:progress_percentage
execute if score @s milestones.progress < @s milestones.target run tellraw @s ["",{"text":"Mobs Killed:        ","color":"white"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score @s milestones.progress >= @s milestones.target run tellraw @s ["",{"text":"Mobs Killed:        ","color":"white"},{"text":"COMPLETE","color":"gold"}]

# Mine
scoreboard players set @s milestones.target 100
scoreboard players set @s[scores={milestones.mine=100..}] milestones.target 5000
scoreboard players set @s[scores={milestones.mine=5000..}] milestones.target 20000
scoreboard players set @s[scores={milestones.mine=20000..}] milestones.target 50000
execute store result score @s milestones.progress run scoreboard players get @s milestones.mine
function _milestones:progress_percentage
execute if score @s milestones.progress < @s milestones.target run tellraw @s ["",{"text":"Stone Mined:       ","color":"white"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score @s milestones.progress >= @s milestones.target run tellraw @s ["",{"text":"Stone Mined:       ","color":"white"},{"text":"COMPLETE","color":"gold"}]

# Active
scoreboard players set @s milestones.target 30
scoreboard players set @s[scores={milestones.activeTime=30..}] milestones.target 480
scoreboard players set @s[scores={milestones.activeTime=480..}] milestones.target 1920
scoreboard players set @s[scores={milestones.activeTime=1920..}] milestones.target 7680
execute store result score @s milestones.progress run scoreboard players get @s milestones.activeTime
function _milestones:progress_percentage
execute if score @s milestones.progress < @s milestones.target run tellraw @s ["",{"text":"Active Time:        ","color":"white"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},{"text":"h","color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"},{"text":"h","color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score @s milestones.progress >= @s milestones.target run tellraw @s ["",{"text":"Active Time:        ","color":"white"},{"text":"COMPLETE","color":"gold"}]

# Villager
scoreboard players set @s milestones.target 3
scoreboard players set @s[scores={milestones.villagerTrades=3..}] milestones.target 30
scoreboard players set @s[scores={milestones.villagerTrades=30..}] milestones.target 300
scoreboard players set @s[scores={milestones.villagerTrades=300..}] milestones.target 3000
execute store result score @s milestones.progress run scoreboard players get @s milestones.villagerTrades
function _milestones:progress_percentage
execute if score @s milestones.progress < @s milestones.target run tellraw @s ["",{"text":"Villager Trades:  ","color":"white"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score @s milestones.progress >= @s milestones.target run tellraw @s ["",{"text":"Villager Trades:  ","color":"white"},{"text":"COMPLETE","color":"gold"}]

# Walk
scoreboard players set @s milestones.target 1000
scoreboard players set @s[scores={milestones.walk=1000..}] milestones.target 30000
scoreboard players set @s[scores={milestones.walk=30000..}] milestones.target 150000
scoreboard players set @s[scores={milestones.walk=150000..}] milestones.target 500000
execute store result score @s milestones.progress run scoreboard players get @s milestones.walk
function _milestones:progress_percentage
execute if score @s milestones.progress < @s milestones.target run tellraw @s ["",{"text":"Walk Distance:     ","color":"white"},{"score":{"name":"@s","objective":"milestones.progress"},"color":"green"},"/",{"score":{"name":"@s","objective":"milestones.target"},"color":"aqua"}," - ",{"score":{"name":"@s","objective":"milestones.percentage"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score @s milestones.progress >= @s milestones.target run tellraw @s ["",{"text":"Walk Distance:     ","color":"white"},{"text":"COMPLETE","color":"gold"}]

tellraw @s {"text": ""}
