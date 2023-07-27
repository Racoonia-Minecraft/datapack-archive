#declare storage milestones
#declare objective racoonia.math
#declare entity $100

execute store result score @s milestones.percentage run scoreboard players get @s milestones.progress
scoreboard players operation @s milestones.percentage *= $100 racoonia.math
scoreboard players operation @s milestones.percentage /= @s milestones.target
data modify storage milestones progressbar.done set value ""
data modify storage milestones progressbar.undone set value "▒▒▒▒▒▒▒▒▒▒"
execute if score @s milestones.percentage matches 10.. run data modify storage milestones progressbar.done set value "█"
execute if score @s milestones.percentage matches 10.. run data modify storage milestones progressbar.undone set value "▒▒▒▒▒▒▒▒▒"
execute if score @s milestones.percentage matches 20.. run data modify storage milestones progressbar.done set value "██"
execute if score @s milestones.percentage matches 20.. run data modify storage milestones progressbar.undone set value "▒▒▒▒▒▒▒▒"
execute if score @s milestones.percentage matches 30.. run data modify storage milestones progressbar.done set value "███"
execute if score @s milestones.percentage matches 30.. run data modify storage milestones progressbar.undone set value "▒▒▒▒▒▒▒"
execute if score @s milestones.percentage matches 40.. run data modify storage milestones progressbar.done set value "████"
execute if score @s milestones.percentage matches 40.. run data modify storage milestones progressbar.undone set value "▒▒▒▒▒▒"
execute if score @s milestones.percentage matches 50.. run data modify storage milestones progressbar.done set value "█████"
execute if score @s milestones.percentage matches 50.. run data modify storage milestones progressbar.undone set value "▒▒▒▒▒"
execute if score @s milestones.percentage matches 60.. run data modify storage milestones progressbar.done set value "██████"
execute if score @s milestones.percentage matches 60.. run data modify storage milestones progressbar.undone set value "▒▒▒▒"
execute if score @s milestones.percentage matches 70.. run data modify storage milestones progressbar.done set value "███████"
execute if score @s milestones.percentage matches 70.. run data modify storage milestones progressbar.undone set value "▒▒▒"
execute if score @s milestones.percentage matches 80.. run data modify storage milestones progressbar.done set value "████████"
execute if score @s milestones.percentage matches 80.. run data modify storage milestones progressbar.undone set value "▒▒"
execute if score @s milestones.percentage matches 90.. run data modify storage milestones progressbar.done set value "█████████"
execute if score @s milestones.percentage matches 90.. run data modify storage milestones progressbar.undone set value "▒"
execute if score @s milestones.percentage matches 100.. run data modify storage milestones progressbar.done set value "█████████"
execute if score @s milestones.percentage matches 100.. run data modify storage milestones progressbar.undone set value ""
