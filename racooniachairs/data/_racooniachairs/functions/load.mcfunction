#declare storage racoonia:datapacks

team add racooniachairs
team modify racooniachairs collisionRule never
scoreboard objectives add racooniachairs_sit dummy
scoreboard objectives add racoonia_entity_version dummy

# Registration
data merge storage racoonia:datapacks {racooniachairs:{version:"1.1",version_number:2}}

# Start Loops
schedule function _racooniachairs:main 1t
schedule function _racooniachairs:sit/check 1t
