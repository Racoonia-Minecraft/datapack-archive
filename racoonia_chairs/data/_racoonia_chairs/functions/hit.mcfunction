# Find pig/chair that has just been hit
# @s = player hitting the chair
# at @s
# run from advancement hit

advancement revoke @s only _racoonia_chairs:hit

execute as @e[type=minecraft:pig,tag=racoonia_chairs,nbt={HurtTime:10s}] at @s positioned ^ ^.9 ^.2 run function _racoonia_chairs:kill
