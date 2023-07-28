#declare storage racoonia:datapacks

scoreboard objectives add customModelData trigger

# Registration
data merge storage racoonia:datapacks {opendata:{installed:true,version:"1.0",version_number:2}}
schedule function _opendata:dep_check 1t
