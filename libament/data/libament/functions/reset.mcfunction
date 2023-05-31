function _libament:remove_presents

scoreboard players reset * libament.talked_villager
scoreboard players reset * libament.raycast_steps
scoreboard players reset * libament.rename_time
scoreboard players reset * libament.allow_opening

scoreboard players set presentLimit libament.raycast_steps 10
scoreboard players set presentLimit libament.rename_time 600
