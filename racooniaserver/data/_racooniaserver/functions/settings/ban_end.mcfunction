tp @s ~ ~ ~
tellraw @s {"text": "The end is currently blocked!", "color": "dark_red"}
playsound minecraft:entity.experience_orb.pickup master @s
advancement revoke @s only minecraft:end/root
