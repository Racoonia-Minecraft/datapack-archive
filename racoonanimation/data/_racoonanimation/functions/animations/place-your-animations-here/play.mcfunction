# 1 animation steps per second

execute if score @s racoonia.animationStep matches 2 run function _racoonanimation:animations/place-your-animations-here/keyframe1
execute if score @s racoonia.animationStep matches 4 run function _racoonanimation:animations/place-your-animations-here/keyframe2
execute if score @s racoonia.animationStep matches 6 run function _racoonanimation:animations/place-your-animations-here/keyframe3
execute if score @s racoonia.animationStep matches 7.. run kill @s
