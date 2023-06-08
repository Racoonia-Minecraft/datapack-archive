# Timer for Couch Potato
# @s = player sitting in a chair
# at @s
# run from function sit/check

# increase time sitting in chair
scoreboard players add @s racoonia_chairs_sit 10

# sit in a chair for 1 hour
advancement grant @s[scores={racoonia_chairs_sit=3600..3609}] only racoonia:chairs/sit
