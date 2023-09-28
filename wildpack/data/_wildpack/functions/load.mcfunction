#declare storage racoonia:datapacks

scoreboard objectives add command_room trigger
scoreboard objectives add spawn_coords trigger
scoreboard objectives add dynmap trigger

# Registration
data merge storage racoonia:datapacks {wildpack:{version:"1.1",version_number:2}}

schedule function _wildpack:main 1t
