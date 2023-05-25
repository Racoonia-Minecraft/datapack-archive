#declare entity presentLimit

scoreboard objectives add racoonia.talked_villager minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add racoonia.raycast_steps dummy
scoreboard players set presentLimit racoonia.raycast_steps 10
scoreboard objectives add racoonia.present_rename_time dummy
scoreboard players set presentLimit racoonia.present_rename_time 600
scoreboard objectives add racoonia.presents dummy

function _libament:update10t
