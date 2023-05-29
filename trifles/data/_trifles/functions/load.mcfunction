#declare entity trifles

scoreboard objectives add trifles.fungusClick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add trifles.hasPocketcat dummy
scoreboard objectives add trifles.pocketcatDisabled dummy
scoreboard objectives add trifles.pocketcatCooldown dummy
scoreboard objectives add trifles.megastewCooldown dummy
execute unless score trifles trifles.megastewCooldown matches 1.. run scoreboard players set trifles trifles.megastewCooldown 60
scoreboard objectives add trifles.diceAnimation dummy
scoreboard objectives add trifles.enderEyeHoldClick dummy
scoreboard objectives add trifles.animationLoop dummy

function _trifles:update20t
function _trifles:update60t
