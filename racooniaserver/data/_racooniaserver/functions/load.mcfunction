scoreboard objectives add racooniaserver.playerKillDetector playerKillCount
scoreboard objectives add racooniaserver.deathCount deathCount
scoreboard objectives add racooniaserver.settingValue dummy
scoreboard objectives add racooniaserver.displayCoords dummy
scoreboard objectives add coordinates_hud trigger
scoreboard objectives add racooniaserver.pos dummy
scoreboard objectives add racoonia.time dummy
scoreboard objectives add issue trigger
execute unless score currentid racooniaserver.playerid matches 2.. run scoreboard players set currentid racooniaserver.playerid 2
function _racooniaserver:settings/setup
function _racooniaserver:slow_tick
