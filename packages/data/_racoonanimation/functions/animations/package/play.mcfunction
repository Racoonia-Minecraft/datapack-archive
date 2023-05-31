execute if score @s racoonanimation.frame matches 1 run function _racoonanimation:animations/package/keyframe1
execute if score @s racoonanimation.frame matches 2 run function _racoonanimation:animations/package/keyframe2
execute if score @s racoonanimation.frame matches 4 run function _racoonanimation:animations/package/keyframe3
execute if score @s racoonanimation.frame matches 5.. run kill @s[tag=!global.ignore,tag=!global.ignore.kill]
