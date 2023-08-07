#declare storage racoonia:datapacks

scoreboard objectives add customModelData trigger

# Registration
data merge storage racoonia:datapacks {opendata:{installed:true,version:"1.1.1",version_number:4}}
schedule function _opendata:dep_check 1t
