scoreboard objectives add command_room trigger
scoreboard objectives add spawn_coords trigger
scoreboard objectives add dynmap trigger

# Registration
data merge storage racoonia:datapacks {wildpack:{installed:true,version:"0.1",version_number:1}}

schedule function _wildpack:main 1t
