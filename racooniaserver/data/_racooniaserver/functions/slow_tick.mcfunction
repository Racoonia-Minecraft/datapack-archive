#declare objective racoonia.math
#declare entity performanceProfile
#declare entity seconds
#declare entity minutes
#declare entity hours
#declare entity game
#declare entity input1
#declare entity input2
#declare entity result

# main
function _racooniaserver:time
function _racooniaserver:settings/handle

scoreboard players enable @a coordinates_hud
execute as @a[scores={coordinates_hud=1..}] run function _racooniaserver:coord_hud/toggle
execute as @a[scores={racooniaserver.displayCoords=1}] run function _racooniaserver:coord_hud/display

execute as @e[type=minecraft:creeper,tag=!racooniaserver.reducedExplosion] run function _racooniaserver:creeper

# issues
execute as @a[scores={issue=1..}] run function _racooniaserver:issue/get
scoreboard players reset @a issue
scoreboard players enable @a issue

execute as @a[nbt={SelectedItem:{tag:{racooniaserver:{issue_form:1b}}}}] if data entity @s SelectedItem.tag.pages[1] run function _racooniaserver:issue/create
kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,nbt={Item:{id:"minecraft:writable_book",Count:1b,tag:{racooniaserver:{issue_form:1b}}}}]

# slow ticker
execute if score performanceProfile racooniaserver.settingValue matches 0 run schedule function _racooniaserver:slow_tick 1t
execute if score performanceProfile racooniaserver.settingValue matches 1 run schedule function _racooniaserver:slow_tick 2t
execute if score performanceProfile racooniaserver.settingValue matches 2 run schedule function _racooniaserver:slow_tick 5t
execute if score performanceProfile racooniaserver.settingValue matches 3 run schedule function _racooniaserver:slow_tick 10t
execute if score performanceProfile racooniaserver.settingValue matches 4.. run schedule function _racooniaserver:slow_tick 20t
