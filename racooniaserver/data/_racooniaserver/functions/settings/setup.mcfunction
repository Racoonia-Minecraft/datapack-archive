#declare entity warnPlayerKill
#declare entity blockEnd
#declare entity tablistDeaths
#declare entity performanceProfile
#declare entity permaHaste

execute unless score warnPlayerKill racoonia.settingValue matches 1.. run scoreboard players set warnPlayerKill racoonia.settingValue 0
execute unless score blockEnd racoonia.settingValue matches 1.. run scoreboard players set blockEnd racoonia.settingValue 0
execute unless score tablistDeaths racoonia.settingValue matches 1.. run scoreboard players set tablistDeaths racoonia.settingValue 0
execute unless score performanceProfile racoonia.settingValue matches 1.. run scoreboard players set performanceProfile racoonia.settingValue 0
execute unless score permaHaste racoonia.settingValue matches 1.. run scoreboard players set permaHaste racoonia.settingValue 0
