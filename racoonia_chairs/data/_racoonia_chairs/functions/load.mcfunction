team add racoonia_chairs
team modify racoonia_chairs collisionRule never
scoreboard objectives add racoonia_chairs_sit dummy
scoreboard objectives add racoonia_entity_version dummy

schedule function _racoonia_chairs:update20t 1t
schedule function _racoonia_chairs:sit/check 1t
