tag @s add packages.package
tag @s add packages.package_unfinished
tag @s remove packages.place_package
execute if entity @p[y_rotation=-45..45] at @s run setblock ~ ~ ~ minecraft:chest[facing=north]
execute if entity @p[y_rotation=-135..-45] at @s run setblock ~ ~ ~ minecraft:chest[facing=west]
execute if entity @p[y_rotation=-180..-135] at @s run setblock ~ ~ ~ minecraft:chest[facing=south]
execute if entity @p[y_rotation=135..180] at @s run setblock ~ ~ ~ minecraft:chest[facing=south]
execute if entity @p[y_rotation=45..135] at @s run setblock ~ ~ ~ minecraft:chest[facing=east]
summon minecraft:villager ~ ~ ~ {Silent: 1b, Invulnerable: 1b, PersistenceRequired: 1b, NoAI: 1b, CanPickUpLoot: 0b, Tags: ["packages.package_lock"], ActiveEffects: [{Id: 14, Amplifier: 1b, Duration: 2147483647, ShowParticles: 0b}]}
summon minecraft:item ~ ~1 ~ {NoGravity: 1b, CustomNameVisible: 1b, Age: -32768, PickupDelay: 32767, Tags: ["packages.package_icon"], CustomName: '{"text":"Click to finish","color":"gold","bold":true}', Item: {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner:{Id:[I;-2053282894,49104884,-1731397254,1003614491],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjY4MjRjM2ZkMTZkNTljNDM5MzdiNTNmZTE0N2ViYWNiZjgxNzgyZjVmMjVkOTAzNTBlYWJhODYxNGU1ZDU3YiJ9fX0="}]}}}}}
tellraw @p[tag=!global.ignore,tag=!global.ignore.gui] {"text":"Now fill the Package with something nice for another player!\nWhen done click above the chest to wrap it up.","color":"blue"}
playsound minecraft:entity.evoker.cast_spell block @a[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~
