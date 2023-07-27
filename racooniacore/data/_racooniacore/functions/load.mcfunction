#declare storage racoonia:datapacks
#declare entity $2
#declare entity $10
#declare entity $20
#declare entity $60
#declare entity $100
#declare entity $1000
#declare entity $1200
#declare entity $3600
#declare entity $72000
#declare entity $pi
#declare entity $e
#declare entity $phi
#declare entity $pi6
#declare entity $e6
#declare entity $phi6

# Setup scoreboard
scoreboard objectives add racoonia.math dummy
scoreboard objectives add racoonia.coinToss dummy

# Setup scoreboard constants
scoreboard players set $2 racoonia.math 2
scoreboard players set $10 racoonia.math 10
scoreboard players set $20 racoonia.math 20
scoreboard players set $60 racoonia.math 60
scoreboard players set $100 racoonia.math 100
scoreboard players set $1000 racoonia.math 1000
scoreboard players set $1200 racoonia.math 1200
scoreboard players set $3600 racoonia.math 3600
scoreboard players set $72000 racoonia.math 72000
scoreboard players set $pi racoonia.math 3141
scoreboard players set $e racoonia.math 2718
scoreboard players set $phi racoonia.math 1618
scoreboard players set $pi6 racoonia.math 3141593
scoreboard players set $e6 racoonia.math 2718282
scoreboard players set $phi6 racoonia.math 1618034

# Registration
data merge storage racoonia:datapacks {racooniacore:{installed:true,version:"1.1",version_number:2}}
