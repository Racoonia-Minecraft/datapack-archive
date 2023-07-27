#declare storage racoonia:datapacks

team add racoonia_chairs
team modify racoonia_chairs collisionRule never
scoreboard objectives add racoonia_chairs_sit dummy
scoreboard objectives add racoonia_entity_version dummy

# Registration
data merge storage racoonia:datapacks {racoonia_chairs:{installed:true,version:"1.0",version_number:1}}

# Start Loops
schedule function _racoonia_chairs:main 1t
schedule function _racoonia_chairs:sit/check 1t
