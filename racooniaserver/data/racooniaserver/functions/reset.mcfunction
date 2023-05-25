#declare objective racoonia.math
#declare entity warnPlayerKill
#declare entity blockEnd
#declare entity tablistDeaths
#declare entity performanceProfile
#declare entity currentid
#declare entity permaHaste
#declare entity math1
#declare entity math2
#declare entity result
#declare entity seconds
#declare entity minutes
#declare entity hours
#declare entity game
#declare entity input1
#declare entity input2
#declare entity result

scoreboard players set warnPlayerKill racoonia.settingValue 0
scoreboard players set blockEnd racoonia.settingValue 0
scoreboard players set tablistDeaths racoonia.settingValue 0
scoreboard players set performanceProfile racoonia.settingValue 0
scoreboard players set permaHaste racoonia.settingValue 0
function _racoonia:settings/setup
scoreboard players reset @a racoonia.displayCoords
scoreboard players reset @a racoonia.coordinates_hud
scoreboard players reset @a issue
scoreboard players reset x racoonia.pos
scoreboard players reset y racoonia.pos
scoreboard players reset z racoonia.pos
scoreboard players reset seconds racoonia.time
scoreboard players reset minutes racoonia.time
scoreboard players reset hours racoonia.time
scoreboard players reset game racoonia.time
scoreboard players reset input1 racoonia.math
scoreboard players reset input2 racoonia.math
scoreboard players reset result racoonia.math
scoreboard players set currentid racoonia.playerid 2
tag @a remove racoonia.admin
tag @a remove racoonia.permaHaste
tag @a remove racoonia.permaSaturation
