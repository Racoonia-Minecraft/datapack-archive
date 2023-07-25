#declare entity $racooniacore

scoreboard objectives add racoonia.depCheck dummy
execute store result score $racooniacore racoonia.depCheck run data get storage racoonia:datapacks racooniacore.version_number
execute unless score $racooniacore racoonia.depCheck matches 2.. run tellraw @a [{"text":"[Milestones]","color":"white","bold":true},{"text":" Couldn't find dependency 'racooniacore' version >= 1.1\n","color":"red"},{"text": "Please install it from https://github.com/Racoonia-Datapacks/datapacks/releases/tag/racooniacore","color":"yellow","clickEvent": {"action": "open_url", "value": "https://github.com/Racoonia-Datapacks/datapacks/releases/tag/racooniacore"}}]
execute if score $racooniacore racoonia.depCheck matches 2.. run function _milestones:main
execute if score $racooniacore racoonia.depCheck matches 2.. run function _milestones:grant_milestones
scoreboard objectives remove racoonia.depCheck
