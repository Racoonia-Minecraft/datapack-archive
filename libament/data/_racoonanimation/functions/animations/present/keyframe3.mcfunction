execute if block ~ ~ ~ minecraft:player_head run summon item ~ ~0.5 ~ {Item: {id: "minecraft:player_head", Count: 1b, tag: {display: {Name: '{"text":"Present","color":"gold","bold":true,"italic":false}'}, SkullOwner: {Id: [I; 1697772162, -757710324, -1081610359, 927064349], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDQxZmJlYTljMmQxOTA0MGU1NjdmMzg3YWI0NmIyZjhhM2ExZGE4ZWVjOWQzOTllMmU0YWRjZjA1YWRhOGEyYSJ9fX0="}]}}}}}
setblock ~ ~ ~ air
kill @s[tag=!global.ignore,tag=!global.ignore.kill]
