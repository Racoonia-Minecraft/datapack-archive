#declare entity warnPlayerKill
#declare entity blockEnd
#declare entity tablistDeaths
#declare entity performanceProfile
#declare entity currentid
#declare entity permaHaste

scoreboard players set warnPlayerKill racooniaserver.settingValue 0
scoreboard players set blockEnd racooniaserver.settingValue 0
scoreboard players set tablistDeaths racooniaserver.settingValue 0
scoreboard players set performanceProfile racooniaserver.settingValue 0
scoreboard players set permaHaste racooniaserver.settingValue 0
function _racooniaserver:settings/setup
scoreboard players reset * racooniaserver.displayCoords
scoreboard players reset * racooniaserver.coordinates_hud
scoreboard players reset * issue
scoreboard players reset * racooniaserver.pos
scoreboard players reset * racooniaserver.time
scoreboard players set currentid racooniaserver.playerid 2
tag @e remove racooniaserver.permaHaste
tag @e remove racooniaserver.permaSaturation
