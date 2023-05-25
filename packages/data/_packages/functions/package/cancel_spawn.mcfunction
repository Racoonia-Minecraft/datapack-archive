kill @e[type=minecraft:marker,tag=racoonia.place_package,distance=..0.1]
summon item ~ ~ ~ {PickupDelay: 20, Motion: [0.0d, 0.3d, 0.0d], Tags: ["racoonia.item.craft"], Item: {id: "minecraft:salmon_spawn_egg", Count: 1b, tag: {display: {Name: '{"text":"Package","color":"gold","bold":true,"italic":false}', Lore: ['{"text":"You can now give another"}','{"text":"player something nice!"}']}, EntityTag: {id: "minecraft:marker", Tags: ["racoonia.place_package"]}}}}
tellraw @a[distance=..10] ["",{"text":"The Package can't be placed here.","bold":true,"underlined":true,"color":"red"},"\n",{"text":"Packages can't be placed in other blocks and on the same x/z position as other packages.","color":"red"}]
playsound minecraft:entity.villager.no master @a ~ ~ ~
