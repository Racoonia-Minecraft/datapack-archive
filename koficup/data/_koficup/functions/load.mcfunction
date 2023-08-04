#declare storage koficup:settings
#declare storage racoonia:datapacks
#declare entity $announce
#declare entity $universalGreetings
#declare entity $universalAnnouncement

# Setup scoreboard
scoreboard objectives add koficup.join custom:minecraft.leave_game
scoreboard objectives add koficup.rank dummy
scoreboard objectives add koficup.enabled dummy

# Setup data storage
execute unless data storage koficup:settings greetings run data modify storage koficup:settings greetings set value ["Thanks for supporting me on kofi!"]
execute unless data storage koficup:settings announcements run data modify storage koficup:settings announcements set value [" is server supporter on kofi!"]

# Setup settings
execute unless score $announce koficup.rank matches 1.. run scoreboard players set $announce koficup.rank 1
execute unless score $universalGreetings koficup.rank matches 1.. run scoreboard players set $universalGreetings koficup.rank 0
execute unless score $universalAnnouncement koficup.rank matches 1.. run scoreboard players set $universalAnnouncement koficup.rank 0

# Registration
data merge storage racoonia:datapacks {koficup:{installed:true,version:"0.1",version_number:1}}

# Start loop
function _koficup:main
