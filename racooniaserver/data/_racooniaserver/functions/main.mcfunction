execute if score $weak_creepers racooniaserver.setting matches 1 as @e[type=creeper,tag=!racooniaserver.weak_creeper] run function _racooniaserver:weak_creepers

scoreboard players add @a racooniaserver.afkTimer 1
execute as @a run function _racooniaserver:afk/check
function _racooniaserver:afk/reset

schedule function _racooniaserver:main 20t
