#declare objective racoonia.math
#declare entity tablistDeaths
#declare entity two

scoreboard players add tablistDeaths racoonia.settingValue 1
scoreboard players operation tablistDeaths racoonia.settingValue %= two racoonia.math
execute if score tablistDeaths racoonia.settingValue matches 0 run function _racooniaserver:settings/disable_tablist_deaths
execute if score tablistDeaths racoonia.settingValue matches 1 run function _racooniaserver:settings/enable_tablist_deaths
