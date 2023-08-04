#declare entity $iterator
#declare entity $universalGreetings
#declare entity $universalAnnouncement

execute unless score $universalGreetings koficup.enabled matches 1 run data remove storage koficup:temp greetings[0]
execute unless score $universalAnnouncement koficup.enabled matches 1 run data remove storage koficup:temp announcements[0]
scoreboard players remove $iterator koficup.rank 1
execute if score $iterator koficup.rank matches 1.. run function _koficup:greeting/get
