#declare storage koficup:settings
#declare entity $announce
#declare entity $universalGreetings
#declare entity $universalAnnouncements

# Reset data storage
data modify storage koficup:settings greetings set value ["Thanks for supporting me on kofi!"]
data modify storage koficup:settings announcements set value [" is server supporter on kofi!"]

# Reset settings
scoreboard players set $announce koficup.rank 1
scoreboard players set $universalGreetings koficup.rank 0
scoreboard players set $universalAnnouncements koficup.rank 0
