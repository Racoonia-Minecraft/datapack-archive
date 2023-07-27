#declare storage racoonia:datapacks
#declare entity trifles

scoreboard objectives add trifles.fungusClick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add trifles.hasPocketcat dummy
scoreboard objectives add trifles.pocketcatDisabled dummy
scoreboard objectives add trifles.pocketcatCooldown dummy
scoreboard objectives add trifles.megastewCooldown dummy
execute unless score trifles trifles.megastewCooldown matches 1.. run scoreboard players set trifles trifles.megastewCooldown 60
scoreboard objectives add trifles.diceAnimation dummy
scoreboard objectives add trifles.animationLoop dummy

# Registration
data merge storage racoonia:datapacks {trifles:{installed:true,version:"0.2",version_number:2}}
schedule function _trifles:dep_check 1t
