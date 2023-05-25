scoreboard objectives add racoonia.playerKillDetector playerKillCount
scoreboard objectives add racoonia.deathCount deathCount
scoreboard objectives add racoonia.settingValue dummy
scoreboard objectives add racoonia.displayCoords dummy
scoreboard objectives add coordinates_hud trigger
scoreboard objectives add racoonia.pos dummy
scoreboard objectives add racoonia.time dummy
scoreboard objectives add issue trigger
execute unless score currentid racoonia.playerid matches 2.. run scoreboard players set currentid racoonia.playerid 2
function _racooniaserver:settings/setup
function _racooniaserver:slow_tick
