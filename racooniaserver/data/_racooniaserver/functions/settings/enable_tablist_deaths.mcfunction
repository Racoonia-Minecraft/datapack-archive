#declare entity tablistDeaths

scoreboard objectives setdisplay list racoonia.deathCount
tellraw @s ["",{"text":"Playerlist Deaths enabled! ","color":"dark_green"},{"text":">","color":"dark_gray"},{"text":"Click to disable","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/tablist_deaths"}},{"text":"<","color":"dark_gray"}]
