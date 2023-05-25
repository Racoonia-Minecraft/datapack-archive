#declare entity packageLimit

scoreboard objectives add racoonia.talked_villager minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add racoonia.raycast_steps dummy
scoreboard players set packageLimit racoonia.raycast_steps 10
scoreboard objectives add racoonia.package_rename_time dummy
scoreboard players set packageLimit racoonia.package_rename_time 600
scoreboard objectives add racoonia.packages dummy

function _packages:update10t
