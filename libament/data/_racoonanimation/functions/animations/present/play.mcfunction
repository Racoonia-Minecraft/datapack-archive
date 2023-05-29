execute if score @s racoonanimation.frame matches 2 run function _racoonanimation:animations/present/keyframe1
execute if score @s racoonanimation.frame matches 4 run function _racoonanimation:animations/present/keyframe2
execute if score @s racoonanimation.frame matches 6 run function _racoonanimation:animations/present/keyframe3
execute if score @s racoonanimation.frame matches 7.. run kill @s[tag=!global.ignore,tag=!global.ignore.kill]
