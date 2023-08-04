#declare storage koficup:temp
#declare entity $iterator
#declare entity $announce
#declare entity $universalGreetings
#declare entity $universalAnnouncements

data modify storage koficup:temp greetings set from storage koficup:settings greetings
execute unless score $universalGreetings koficup.enabled matches 1 run data modify storage koficup:temp greetings insert 0 value ""
data modify storage koficup:temp announcements set from storage koficup:settings announcements
execute unless score $universalAnnouncements koficup.enabled matches 1 run data modify storage koficup:temp announcements insert 0 value ""
execute store result score $iterator koficup.rank run scoreboard players get @s koficup.rank
function _koficup:greeting/get
execute if score @s koficup.rank >= $announce koficup.rank run tellraw @a ["",{"selector":"@s","color":"gold"},{"nbt":"announcements[0]","storage":"koficup:temp","color":"gold"},"\n",{"text":"Become supporter at https://ko-fi.com/racooder","clickEvent":{"action":"open_url","value":"https://ko-fi.com/racooder"}}]
tellraw @s {"nbt":"greetings[0]","storage":"koficup:temp","color":"dark_aqua"}
