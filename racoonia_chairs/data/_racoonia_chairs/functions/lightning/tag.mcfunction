# Target NoAI zombified_piglin after lightning strike near player
# @s = player
# at @s
# runs from advancement, _racoonia_chairs:lightning

advancement revoke @s only _racoonia_chairs:lightning

execute as @e[type=zombified_piglin,nbt={NoAI:1b}] unless data entity @s Tags at @s if block ~ ~1 ~ #minecraft:stairs run function _racoonia_chairs:lightning/revive_chair
