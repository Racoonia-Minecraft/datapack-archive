#declare storage racoonia:datapacks
#declare entity #packageLimit

scoreboard objectives add packages.talked_villager minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add packages.raycast_steps dummy
scoreboard players set #packageLimit packages.raycast_steps 10
scoreboard objectives add packages.rename_time dummy
scoreboard players set #packageLimit packages.rename_time 600

# Registration
data merge storage racoonia:datapacks {packages:{version:"1.1",version_number:3}}
schedule function _packages:dep_check 1t
