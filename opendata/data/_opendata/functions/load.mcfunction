#declare storage racoonia:datapacks

scoreboard objectives add customModelData trigger

# Registration
data merge storage racoonia:datapacks {opendata:{version:"1.2",version_number:5}}
schedule function _opendata:dep_check 1t
