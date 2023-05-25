#declare entity tablistDeaths

scoreboard objectives setdisplay list
tellraw @s ["",{"text":"Playerlist Deaths disabled! ","color":"red"},{"text":">","color":"dark_gray"},{"text":"Click to enable","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function _racooniaserver:settings_switch/tablist_deaths"}},{"text":"<","color":"dark_gray"}]
