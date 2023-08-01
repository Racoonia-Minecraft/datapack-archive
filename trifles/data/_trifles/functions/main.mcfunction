#declare entity $pocketcat
#declare entity $megastew
#declare entity $dice
#declare entity $hot_beverages
#declare entity $bible
#declare entity $interaction_block

# Handle
    # Mega Stew
    scoreboard players remove @a[scores={trifles.megastewCooldown=1..}] trifles.megastewCooldown 1

    # Pocket cat
    execute as @a[scores={trifles.hasPocketcat=1..}] unless score @s trifles.pocketcatDisabled matches 1 at @s run function _trifles:pocketcat/handle
    scoreboard players remove @a[scores={trifles.pocketcatCooldown=1..}] trifles.pocketcatCooldown 1

    # Dice
    execute as @e[tag=trifles.dice_spawn] at @s run function _trifles:dice/spawn

    # Block Button
    execute as @e[tag=trifles.interaction_block_spawn] at @s run function _trifles:interaction_block/spawn
    execute as @e[type=interaction,tag=trifles.block_button_interaction] at @s if block ~ ~ ~ air run function _trifles:block_button/break
    execute as @e[type=interaction,tag=trifles.block_lever_interaction] at @s if block ~ ~ ~ air run function _trifles:block_lever/break

# Craft
    # Pocket Cat
    execute if score $pocketcat trifles.enabled matches 1 at @e[type=item,nbt={Item: {id: "minecraft:leather", Count: 3b}}] at @e[type=item,nbt={Item: {id: "minecraft:rabbit_hide", Count: 2b}},distance=..0.5,sort=nearest,limit=1] at @e[type=item,nbt={Item: {id: "minecraft:salmon", Count: 1b}},distance=..0.5,sort=nearest,limit=1] if block ~ ~-0.1 ~ minecraft:crafting_table run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["trifles.cat_in_a_bag.item_craft"],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Cat in a Bag","color":"aqua","italic":false}',Lore:['{"text":"Meows when a creeper is nearby","color":"white","italic":false}','{"text":" "}','{"text":"Rightclick to toggle","color":"yellow","italic":false}','{"text":" "}','{"text":"“A happy arrangement:","color":"gray","italic":true}','{"text":"many people prefer cats to other","color":"gray"}','{"text":"people, and many cats prefer","color":"gray"}','{"text":"people to other cats.”","color":"gray"}','{"text":"– Mason Cooley","color":"gray"}','{"text":" "}','{"text":"ᴛᴇxᴛᴜʀᴇᴅ ʙʏ ɢᴏᴛᴜʀᴀ"}']},HideFlags:4,Unbreakable:1b,CustomModelData:4000101,trifles:{is_gadget:1b,type:"pocketcat"}}}}
    execute as @e[type=item,tag=trifles.cat_in_a_bag.item_craft] at @s run function _trifles:craft/pocketcat

    # Megastew
    execute if score $megastew trifles.enabled matches 1 at @e[type=item,nbt={Item: {id: "minecraft:bowl", Count: 1b}}] at @e[type=item,nbt={Item: {id: "minecraft:potato", Count: 1b}},distance=..0.5,sort=nearest,limit=1] at @e[type=item,nbt={Item: {id: "minecraft:carrot", Count: 1b}},distance=..0.5,sort=nearest,limit=1] at @e[type=item,nbt={Item: {id: "minecraft:cooked_beef", Count: 1b}},distance=..0.5,sort=nearest,limit=1] at @e[type=item,nbt={Item: {id: "minecraft:cooked_porkchop", Count: 1b}},distance=..0.5,sort=nearest,limit=1] if block ~ ~-0.1 ~ minecraft:crafting_table run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["trifles.megastew.item_craft"],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Mega Stew","color":"aqua","italic":false}',Lore:['{"text":"INFINITE STEW!!!","color":"white","italic":false}','{"text":" "}','{"text":"“Stew\'s so comforting on a rainy day.”","color":"gray"}','{"text":" "}','{"text":"ᴛᴇxᴛᴜʀᴇᴅ ʙʏ ꜱɪᴍᴏɴ₁₀₂"}']},HideFlags:4,Unbreakable:1b,CustomModelData:4000102,trifles:{is_gadget:1b,type:"megastew"}}}}
    execute as @e[type=item,tag=trifles.megastew.item_craft] at @s run function _trifles:craft/megastew

    # Dice
    execute if score $dice trifles.enabled matches 1 at @e[type=item,nbt={Item: {id: "minecraft:oak_planks", Count: 1b}}] at @e[type=item,nbt={Item: {id: "minecraft:red_dye", Count: 4b}},distance=..0.5,sort=nearest,limit=1] if block ~ ~-0.1 ~ minecraft:crafting_table run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["trifles.dice.item_craft"],Item:{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Dice", "color":"aqua","italic":false}',Lore:['{"text":"Play some dice games!","color":"white","italic":false}','{"text":" "}','{"text":"\\"God does not play dice.\\"","color":"gray"}','{"text":"- Albert Einstein","color":"gray"}','{"text":" "}','{"text":"ᴛᴇxᴛᴜʀᴇᴅ ʙʏ ꜱɪᴍᴏɴ₁₀₂"}']},CustomModelData:4000103,trifles:{is_gadget:1b,type:"dice"},EntityTag:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["trifles.dice_spawn"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1719126018,-1744418856,-1189114273,1353348557],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmUyMmMyOThlN2M2MzM2YWYxNzkwOWFjMWYxZWU2ODM0YjU4YjFhM2NjOTlhYmEyNTVjYTdlYWViNDc2MTczIn19fQ=="}]}}}}]}}}}
    execute as @e[type=item,tag=trifles.dice.item_craft] at @s run function _trifles:craft/dice

    # Cup
    execute if score $hot_beverages trifles.enabled matches 1 at @e[type=item,nbt={Item: {id: "minecraft:quartz", Count: 3b}}] if block ~ ~-0.1 ~ minecraft:crafting_table run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["trifles.cup.item_craft"],Item:{id:"minecraft:glass_bottle",Count:3b,tag:{display:{Name:'{"text":"Empty Cup","color":"aqua","italic":false}',Lore:['{"text":"A empty cup","color":"white","italic":false}','{"text":" "}','{"text":"Your cup is neither half full","color":"gray"}','{"text":"nor half empty. It\'s just empty!","color":"gray"}','{"text":" "}','{"text":"ᴛᴇxᴛᴜʀᴇᴅ ʙʏ ɢᴏᴛᴜʀᴀ"}']},CustomModelData:4000104,trifles:{is_gadget:1b,type:"cup"}}}}
    execute as @e[type=item,tag=trifles.cup.item_craft] at @s run function _trifles:craft/cup

    # Coffee
    execute if score $hot_beverages trifles.enabled matches 1 at @e[type=item,nbt={Item: {id: "minecraft:glass_bottle", tag:{trifles:{is_gadget:1b,type:"cup"}}, Count: 1b}}] at @e[type=item,nbt={Item: {id: "minecraft:cocoa_beans", Count: 4b}},distance=..0.5,sort=nearest,limit=1] if block ~ ~-0.1 ~ minecraft:crafting_table run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["trifles.coffee.item_craft"],Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Coffee","color":"aqua","italic":false}',Lore:['{"text":"A nice hot cup of coffee","color":"white","italic":false}','{"text":" "}','{"text":"“I would rather suffer from","color":"gray","italic":true}','{"text":"coffee than be senseless.”","color":"gray"}','{"text":" — Napoleon Bonaparte","color":"gray"}','{"text":" "}','{"text":"ᴛᴇxᴛᴜʀᴇᴅ ʙʏ ɢᴏᴛᴜʀᴀ"}']},CustomModelData:4000105,trifles:{is_gadget:1b,type:"coffee",group:"hot_beverage"},CustomPotionEffects:[{Id:16,Amplifier:0b,Duration:2400},{Id:17,Amplifier:1b,Duration:100}],CustomPotionColor:16777215}}}
    execute as @e[type=item,tag=trifles.coffee.item_craft] at @s run function _trifles:craft/coffee

    # Hot Chocolate
    execute if score $hot_beverages trifles.enabled matches 1 at @e[type=item,nbt={Item: {id: "minecraft:glass_bottle", tag:{trifles:{is_gadget:1b,type:"cup"}}, Count: 1b}}] at @e[type=item,nbt={Item: {id: "minecraft:cocoa_beans", Count: 3b}},distance=..0.5,sort=nearest,limit=1] at @e[type=item,nbt={Item: {id: "minecraft:milk_bucket", Count: 1b}},distance=..0.5,sort=nearest,limit=1] if block ~ ~-0.1 ~ minecraft:crafting_table run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["trifles.hot_chocolate.item_craft"],Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Hot Chocolate","color":"aqua","italic":false}',Lore:['{"text":"A cup of hot chocolate","color":"white","italic":false}','{"text":" "}','{"text":"“Blood is really warm, it\'s like","color":"gray","italic":true}','{"text":"drinking hot chocolate but with","color":"gray"}','{"text":"more screaming.” - Ryan Mecum","color":"gray"}','{"text":" "}','{"text":"ᴛᴇxᴛᴜʀᴇᴅ ʙʏ ɢᴏᴛᴜʀᴀ"}']},CustomModelData:4000106,trifles:{is_gadget:1b,type:"hot_chocolate",group:"hot_beverage"},CustomPotionEffects:[{Id:10,Amplifier:1b,Duration:100},{Id:23,Amplifier:1b,Duration:20}],CustomPotionColor:16777215}}}
    execute as @e[type=item,tag=trifles.hot_chocolate.item_craft] at @s run function _trifles:craft/hot_chocolate

    # Tea
    execute if score $hot_beverages trifles.enabled matches 1 at @e[type=item,nbt={Item: {id: "minecraft:glass_bottle", tag:{trifles:{is_gadget:1b,type:"cup"}}, Count: 1b}}] at @e[type=item,nbt={Item: {id: "minecraft:glow_berries", Count: 1b}},distance=..0.5,sort=nearest,limit=1] at @e[type=item,nbt={Item: {id: "minecraft:sweet_berries", Count: 1b}},distance=..0.5,sort=nearest,limit=1] at @e[type=item,nbt={Item: {id: "minecraft:honey_bottle", Count: 1b}},distance=..0.5,sort=nearest,limit=1] if block ~ ~-0.1 ~ minecraft:crafting_table run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["trifles.tea.item_craft"],Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Tea","color":"aqua","italic":false}',Lore:['{"text":"A cup of tea","color":"white","italic":false}','{"text":" "}','{"text":"“Where there’s tea there’s hope.”","color":"gray","italic":true}','{"text":"— Arthur Wing Pinero","color":"gray"}','{"text":" "}','{"text":"ᴛᴇxᴛᴜʀᴇᴅ ʙʏ ɢᴏᴛᴜʀᴀ"}']},CustomModelData:4000107,trifles:{is_gadget:1b,type:"tea",group:"hot_beverage"},CustomPotionEffects:[{Id:28,Amplifier:0b,Duration:200}],CustomPotionColor:16777215}}}
    execute as @e[type=item,tag=trifles.tea.item_craft] at @s run function _trifles:craft/tea

    # Espresso
    execute if score $hot_beverages trifles.enabled matches 1 at @e[type=item,nbt={Item: {id: "minecraft:glass_bottle", tag:{trifles:{is_gadget:1b,type:"cup"}}, Count: 1b}}] at @e[type=item,nbt={Item: {id: "minecraft:cocoa_beans", Count: 6b}},distance=..0.5,sort=nearest,limit=1] at @e[type=item,nbt={Item: {id: "minecraft:sugar", Count: 2b}},distance=..0.5,sort=nearest,limit=1] if block ~ ~-0.1 ~ minecraft:crafting_table run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["trifles.espresso.item_craft"],Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Espresso","color":"aqua","italic":false}',Lore:['{"text":"A nice hot cup of coffee","color":"white","italic":false}','{"text":" "}','{"text":"“Without my morning coffee","color":"gray","italic":true}','{"text":"I\'m just like a dried up piece","color":"gray"}','{"text":"of roast goat.”  — J.S. Bach","color":"gray"}','{"text":" "}','{"text":"ᴛᴇxᴛᴜʀᴇᴅ ʙʏ ɢᴏᴛᴜʀᴀ"}']},CustomModelData:4000108,trifles:{is_gadget:1b,type:"espresso",group:"hot_beverage"},CustomPotionEffects:[{Id:1,Amplifier:1b,Duration:1200},{Id:17,Amplifier:1b,Duration:100}],CustomPotionColor:16777215}}}
    execute as @e[type=item,tag=trifles.espresso.item_craft] at @s run function _trifles:craft/espresso

    # Bible
    execute if score $bible trifles.enabled matches 1 at @e[type=item,nbt={Item: {id: "minecraft:book", Count: 1b}}] at @e[type=item,nbt={Item: {id: "minecraft:golden_apple", Count: 1b}},distance=..0.5,sort=nearest,limit=1] if block ~ ~-0.1 ~ minecraft:crafting_table run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["trifles.bible.item_craft"],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Bible","color":"aqua","italic":false}',Lore:['{"text":"The holy scriptures","color":"white","italic":false}','{"text":" "}','{"text":"“I am with you always,","color":"gray"}','{"text":"even unto the end of the world.”","color":"gray"}','{"text":"(Matthew 28:20)","color":"gray"}','{"text":" "}','{"text":"ᴛᴇxᴛᴜʀᴇᴅ ʙʏ ꜱɪᴍᴏɴ₁₀₂"}']},HideFlags:4,Unbreakable:1b,CustomModelData:4000109,trifles:{is_gadget:1b,type:"bible"}}}}
    execute as @e[type=item,tag=trifles.bible.item_craft] at @s run function _trifles:craft/bible

    # Interaction Block
    execute if score $interaction_block trifles.enabled matches 1 at @e[type=item,nbt={Item: {id: "minecraft:redstone", Count: 4b}}] at @e[type=item,nbt={Item: {id: "minecraft:glass", Count: 1b}},distance=..0.5,sort=nearest,limit=1] if block ~ ~-0.1 ~ minecraft:crafting_table run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["trifles.interaction_block.item_craft"],Item:{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Interaction Block","color":"aqua","italic":false}',Lore:['{"text":"Disguise your button or lever as a block","color":"white","italic":false}','{"text":" "}','{"text":"\\"Follow your bliss and the","color":"gray","italic":true}','{"text":"universe will open doors","color":"gray"}','{"text":"where there were only walls.\\"","color":"gray"}','{"text":"- Joseph Campbell","color":"gray","italic":true}','{"text":" "}','{"text":"ᴛᴇxᴛᴜʀᴇᴅ ʙʏ ꜱɪᴍᴏɴ₁₀₂"}']},CustomModelData:4000112,trifles:{is_gadget:1b,type:"interaction_block"},EntityTag:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["trifles.interaction_block_spawn"]}}}}
    execute as @e[type=item,tag=trifles.interaction_block.item_craft] at @s run function _trifles:craft/interaction_block

schedule function _trifles:main 20t
