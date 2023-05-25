# Triggers
tp @a[scores={command_room=1..}] -801 -62 -297
tellraw @a[scores={spawn_coords=1..}] ["",{"text":"Spawn is at: ","color":"dark_aqua"},{"text":"-801 / 107 / -297","color":"gold","clickEvent":{"action":"copy_to_clipboard","value":"-801 107 -297"},"hoverEvent":{"action":"show_text","contents":["Click to copy!"]}}]
tellraw @a[scores={dynmap=1..}] ["",{"text":"Dynamp Link: ","color":"dark_aqua"},{"text":"http://racooniamc.ddns.net:8123","color":"gold","clickEvent":{"action":"open_url","value":"http://racooniamc.ddns.net:8123"},"hoverEvent":{"action":"show_text","contents":["Click to open!"]}}]

scoreboard players reset @a command_room
scoreboard players enable @a[tag=racoonia.admin] command_room
scoreboard players reset @a spawn_coords
scoreboard players enable @a spawn_coords
scoreboard players reset @a dynmap
scoreboard players enable @a dynmap

# Schedule
schedule function _wildpack:update20t 20t
