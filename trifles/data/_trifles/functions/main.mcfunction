# Mega Stew
scoreboard players remove @a[scores={trifles.megastewCooldown=1..}] trifles.megastewCooldown 1

# Pocket cat
execute as @a[scores={trifles.hasPocketcat=1..}] unless score @s trifles.pocketcatDisabled matches 1 at @s run function _trifles:pocketcat/handle
scoreboard players remove @a[scores={trifles.pocketcatCooldown=1..}] trifles.pocketcatCooldown 1

# Dice
execute as @e[tag=trifles.dice_spawn] at @s run function _trifles:dice/spawn

# Right click detection
execute as @a[scores={trifles.fungusClick=1..}] run function _trifles:click/fungus
scoreboard players reset @a trifles.fungusClick
scoreboard players reset @a trifles.enderEyeHoldClick

# Craft
# - Pocket Cat
execute at @e[type=item,nbt={Item: {id: "minecraft:leather", Count: 3b}}] at @e[type=item,nbt={Item: {id: "minecraft:rabbit_hide", Count: 2b}},distance=..0.5,sort=nearest,limit=1] at @e[type=item,nbt={Item: {id: "minecraft:salmon", Count: 1b}},distance=..0.5,sort=nearest,limit=1] if block ~ ~-0.1 ~ minecraft:crafting_table run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["trifles.cat_in_a_bag.item_craft"],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Cat in a Bag","color":"aqua","italic":false}',Lore:['{"text":"Meows when a creeper is nearby","color":"white","italic":false}','{"text":" "}','{"text":"Rightclick to toggle","color":"yellow","italic":false}','{"text":" "}','{"text":"“A happy arrangement:","color":"gray","italic":true}','{"text":"many people prefer cats to other","color":"gray"}','{"text":"people, and many cats prefer","color":"gray"}','{"text":"people to other cats.”","color":"gray"}','{"text":"– Mason Cooley","color":"gray"}','{"text":" "}','{"text":"ᴛᴇxᴛᴜʀᴇᴅ ʙʏ ɢᴏᴛᴜʀᴀ"}']},HideFlags:4,Unbreakable:1b,CustomModelData:4000101,trifles:{is_gadget:1b,type:"pocketcat"}}}}
execute as @e[type=item,tag=trifles.cat_in_a_bag.item_craft] at @s run function _trifles:craft/pocketcat

# - Megastew
execute at @e[type=item,nbt={Item: {id: "minecraft:bowl", Count: 1b}}] at @e[type=item,nbt={Item: {id: "minecraft:potato", Count: 1b}},distance=..0.5,sort=nearest,limit=1] at @e[type=item,nbt={Item: {id: "minecraft:carrot", Count: 1b}},distance=..0.5,sort=nearest,limit=1] at @e[type=item,nbt={Item: {id: "minecraft:cooked_beef", Count: 1b}},distance=..0.5,sort=nearest,limit=1] at @e[type=item,nbt={Item: {id: "minecraft:cooked_porkchop", Count: 1b}},distance=..0.5,sort=nearest,limit=1] if block ~ ~-0.1 ~ minecraft:crafting_table run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["trifles.megastew.item_craft"],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Mega Stew","color":"aqua","italic":false}',Lore:['{"text":"INFINITE STEW!!!","color":"white","italic":false}','{"text":" "}','{"text":"“Stew\'s so comforting on a rainy day.”","color":"gray"}','{"text":" "}','{"text":"ᴛᴇxᴛᴜʀᴇᴅ ʙʏ ꜱɪᴍᴏɴ₁₀₂"}']},HideFlags:4,Unbreakable:1b,CustomModelData:4000102,trifles:{is_gadget:1b,type:"megastew"}}}}
execute as @e[type=item,tag=trifles.megastew.item_craft] at @s run function _trifles:craft/megastew

# - Dice
execute at @e[type=item,nbt={Item: {id: "minecraft:oak_planks", Count: 1b}}] at @e[type=item,nbt={Item: {id: "minecraft:red_dye", Count: 4b}},distance=..0.5,sort=nearest,limit=1] if block ~ ~-0.1 ~ minecraft:crafting_table run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["trifles.dice.item_craft"],Item:{id:"minecraft:pig_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Dice", "color":"aqua","italic":false}',Lore:['{"text":"Play some dice games!","color":"white","italic":false}','{"text":" "}','{"text":"\\"God does not play dice.\\"","color":"gray"}','{"text":"- Albert Einstein","color":"gray"}','{"text":" "}','{"text":"ᴛᴇxᴛᴜʀᴇᴅ ʙʏ ꜱɪᴍᴏɴ₁₀₂"}']},CustomModelData:4000103,trifles:{is_gadget:1b,type:"dice"},EntityTag:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["trifles.dice_spawn"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1719126018,-1744418856,-1189114273,1353348557],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmUyMmMyOThlN2M2MzM2YWYxNzkwOWFjMWYxZWU2ODM0YjU4YjFhM2NjOTlhYmEyNTVjYTdlYWViNDc2MTczIn19fQ=="}]}}}}]}}}}
execute as @e[type=item,tag=trifles.dice.item_craft] at @s run function _trifles:craft/dice

# - Cup
execute at @e[type=item,nbt={Item: {id: "minecraft:quartz", Count: 3b}}] if block ~ ~-0.1 ~ minecraft:crafting_table run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["trifles.cup.item_craft"],Item:{id:"minecraft:glass_bottle",Count:3b,tag:{display:{Name:'{"text":"Empty Cup","color":"aqua","italic":false}',Lore:['{"text":"A empty cup","color":"white","italic":false}','{"text":" "}','{"text":"Your cup is neither half full","color":"gray"}','{"text":"nor half empty. It\'s just empty!","color":"gray"}','{"text":" "}','{"text":"ᴛᴇxᴛᴜʀᴇᴅ ʙʏ ɢᴏᴛᴜʀᴀ"}']},CustomModelData:4000104,trifles:{is_gadget:1b,type:"cup"}}}}
execute as @e[type=item,tag=trifles.cup.item_craft] at @s run function _trifles:craft/cup



# - Bible
execute at @e[type=item,nbt={Item: {id: "minecraft:book", Count: 1b}}] at @e[type=item,nbt={Item: {id: "minecraft:golden_apple", Count: 1b}},distance=..0.5,sort=nearest,limit=1] if block ~ ~-0.1 ~ minecraft:crafting_table run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["trifles.bible.item_craft"],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Bible","color":"aqua","italic":false}',Lore:['{"text":"The holy scriptures","color":"white","italic":false}','{"text":" "}','{"text":"“I am with you always,","color":"gray"}','{"text":"even unto the end of the world.”","color":"gray"}','{"text":"(Matthew 28:20)","color":"gray"}','{"text":" "}','{"text":"ᴛᴇxᴛᴜʀᴇᴅ ʙʏ ꜱɪᴍᴏɴ₁₀₂"}']},HideFlags:4,Unbreakable:1b,CustomModelData:4000109,trifles:{is_gadget:1b,type:"bible"}}}}
execute as @e[type=item,tag=trifles.bible.item_craft] at @s run function _trifles:craft/bible

schedule function _trifles:main 20t
