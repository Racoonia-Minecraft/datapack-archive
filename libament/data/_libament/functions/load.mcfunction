#declare entity $presentLimit

scoreboard objectives add libament.talked_villager minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add libament.raycast_steps dummy
scoreboard players set $presentLimit libament.raycast_steps 10
scoreboard objectives add libament.rename_time dummy
scoreboard players set $presentLimit libament.rename_time 600
scoreboard objectives add libament.allow_opening dummy

# Registration
data merge storage racoonia:datapacks {libament:{installed:true,version:"1.1",version_number:2}}
schedule function _libament:dep_check 1t
