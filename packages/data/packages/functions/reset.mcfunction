#declare entity $packageLimit

function _packages:remove_packages

scoreboard players reset * packages.talked_villager
scoreboard players reset * packages.raycast_steps
scoreboard players reset * packages.rename_time

scoreboard players set $packageLimit packages.raycast_steps 10
scoreboard players set $packageLimit packages.rename_time 600
