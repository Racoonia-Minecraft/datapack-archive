function _libament:remove_presents

scoreboard objectives add libament.talked_villager minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add libament.raycast_steps dummy
scoreboard players set $presentLimit libament.raycast_steps 10
scoreboard objectives add libament.rename_time dummy
scoreboard players set $presentLimit libament.rename_time 600
scoreboard objectives add libament.allow_opening dummy

data remove storage racoonia:datapacks libament
