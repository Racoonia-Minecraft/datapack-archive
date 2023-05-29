#declare entity blockEnd
#declare entity warnPlayerKill
#declare tag global.ignore

execute if score blockEnd racooniaserver.settingValue matches 1 as @a[advancements={minecraft:end/root=true},tag=!global.ignore] run function _racooniaserver:settings/ban_end

execute if score warnPlayerKill racooniaserver.settingValue matches 1 as @a[scores={racooniaserver.playerKillDetector=1..},tag=!global.ignore] run function _racooniaserver:settings/warn_player_kill
scoreboard players set @a racooniaserver.playerKillDetector 0

execute if score permaHaste racooniaserver.settingValue matches 1 run effect give @a[tag=racooniaserver.permaHaste,tag=!global.ignore] haste 2 0 true
execute if score permaHaste racooniaserver.settingValue matches 2 run effect give @a[tag=!global.ignore] haste 10 0 true
execute if score permaSaturation racooniaserver.settingValue matches 1 run effect give @a[tag=racooniaserver.permaSaturation,tag=!global.ignore] saturation 2 0 true
execute if score permaSaturation racooniaserver.settingValue matches 2 run effect give @a[tag=!global.ignore] saturation 10 0 true
