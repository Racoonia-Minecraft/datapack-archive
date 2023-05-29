#declare entity warnPlayerKill
#declare entity blockEnd
#declare entity tablistDeaths
#declare entity performanceProfile
#declare entity permaHaste

execute unless score warnPlayerKill racooniaserver.settingValue matches 1.. run scoreboard players set warnPlayerKill racooniaserver.settingValue 0
execute unless score blockEnd racooniaserver.settingValue matches 1.. run scoreboard players set blockEnd racooniaserver.settingValue 0
execute unless score tablistDeaths racooniaserver.settingValue matches 1.. run scoreboard players set tablistDeaths racooniaserver.settingValue 0
execute unless score performanceProfile racooniaserver.settingValue matches 1.. run scoreboard players set performanceProfile racooniaserver.settingValue 0
execute unless score permaHaste racooniaserver.settingValue matches 1.. run scoreboard players set permaHaste racooniaserver.settingValue 0
