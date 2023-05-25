#declare entity blockEnd
#declare entity warnPlayerKill
#declare tag global.ignore

execute if score blockEnd racoonia.settingValue matches 1 as @a[advancements={minecraft:end/root=true},tag=!global.ignore] run function _racooniaserver:settings/ban_end

execute if score warnPlayerKill racoonia.settingValue matches 1 as @a[scores={racoonia.playerKillDetector=1..},tag=!global.ignore] run function _racooniaserver:settings/warn_player_kill
scoreboard players set @a racoonia.playerKillDetector 0

execute if score permaHaste racoonia.settingValue matches 1 run effect give @a[tag=racoonia.permaHaste,tag=!global.ignore] haste 2 0 true
execute if score permaHaste racoonia.settingValue matches 2 run effect give @a[tag=!global.ignore] haste 10 0 true
execute if score permaSaturation racoonia.settingValue matches 1 run effect give @a[tag=racoonia.permaSaturation,tag=!global.ignore] saturation 2 0 true
execute if score permaSaturation racoonia.settingValue matches 2 run effect give @a[tag=!global.ignore] saturation 10 0 true
