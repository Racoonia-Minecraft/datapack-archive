#declare objective racoonia.math
#declare entity tablistDeaths
#declare entity two

scoreboard players add tablistDeaths racooniaserver.settingValue 1
scoreboard players operation tablistDeaths racooniaserver.settingValue %= two racoonia.math
execute if score tablistDeaths racooniaserver.settingValue matches 0 run function _racooniaserver:settings/disable_tablist_deaths
execute if score tablistDeaths racooniaserver.settingValue matches 1 run function _racooniaserver:settings/enable_tablist_deaths
