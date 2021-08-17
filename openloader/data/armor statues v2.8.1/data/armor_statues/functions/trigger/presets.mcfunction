#
# Description:	Put armor stand into a preset pose
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
execute if entity @s[scores={as_trigger=20}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=21}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[20.0f,0.0f,10.0f],LeftArm:[-20.0f,0.0f,-10.0f],RightLeg:[-20.0f,0.0f,0.0f],LeftLeg:[20.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=22}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[-40.0f,0.0f,10.0f],LeftArm:[40.0f,0.0f,-10.0f],RightLeg:[40.0f,0.0f,0.0f],LeftLeg:[-40.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=23}] run data merge entity @s {Pose:{Head:[0.0f,20.0f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[-90.0f,18.0f,0.0f],LeftArm:[0.0f,0.0f,-10.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=24}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[-20.0f,-20.0f,0.0f],LeftArm:[-50.0f,50.0f,0.0f],RightLeg:[-20.0f,0.0f,0.0f],LeftLeg:[20.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=25}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f],Body:[15.0f,0.0f,0.0f],RightArm:[-60.0f,-10.0f,0.0f],LeftArm:[10.0f,0.0f,-10.0f],RightLeg:[-15.0f,0.0f,0.0f],LeftLeg:[30.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=26}] run data merge entity @s {Pose:{Head:[-15.0f,0.0f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[-120.0f,-10.0f,0.0f],LeftArm:[10.0f,0.0f,-10.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[15.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=27}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[-80.0f,20.0f,0.0f],LeftArm:[-80.0f,-20.0f,0.0f],RightLeg:[-90.0f,10.0f,0.0f],LeftLeg:[-90.0f,-10.0f,0.0f]}}
execute if entity @s[scores={as_trigger=28}] run data merge entity @s {Pose:{Head:[-15.0f,0.0f,0.0f],Body:[10.0f,0.0f,0.0f],RightArm:[-140.0f,-10.0f,0.0f],LeftArm:[70.0f,0.0f,-10.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[75.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=29}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f],Body:[10.0f,0.0f,0.0f],RightArm:[-90.0f,-10.0f,0.0f],LeftArm:[-75.0f,0.0f,10.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[75.0f,0.0f,0.0f]}}
#
execute if entity @s[scores={as_trigger=30}] run data merge entity @s {Pose:{Head:[-10.0f,20.0f,0.0f],Body:[-2.0f,0.0f,0.0f],RightArm:[5.0f,0.0f,0.0f],LeftArm:[5.0f,0.0f,0.0f],RightLeg:[16.0f,2.0f,10.0f],LeftLeg:[0.0f,-10.0f,-4.0f]}}
execute if entity @s[scores={as_trigger=31}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f],Body:[5.0f,0.0f,0.0f],RightArm:[-124.0f,-51.0f,-35.0f],LeftArm:[29.0f,0.0f,25.0f],RightLeg:[0.0f,-4.0f,-2.0f],LeftLeg:[0.0f,4.0f,2.0f]}}
execute if entity @s[scores={as_trigger=32}] run data merge entity @s {Pose:{Head:[-85.0f,0.0f,0.0f],Body:[-90.0f,0.0f,0.0f],RightArm:[-90.0f,10.0f,0.0f],LeftArm:[-90.0f,-10.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=33}] run data merge entity @s {Pose:{Head:[45.0f,-4.0f,1.0f],Body:[10.0f,0.0f,0.0f],RightArm:[18.0f,-14.0f,0.0f],LeftArm:[-72.0f,24.0f,47.0f],RightLeg:[25.0f,-2.0f,0.0f],LeftLeg:[-4.0f,-6.0f,-2.0f]}}
execute if entity @s[scores={as_trigger=34}] run data merge entity @s {Pose:{Head:[14.0f,-12.0f,6.0f],Body:[5.0f,0.0f,0.0f],RightArm:[-40.0f,20.0f,0.0f],LeftArm:[-4.0f,-20.0f,-10.0f],RightLeg:[-88.0f,71.0f,0.0f],LeftLeg:[-88.0f,46.0f,0.0f]}}
execute if entity @s[scores={as_trigger=35}] run data merge entity @s {Pose:{Head:[0.0f,30.0f,0f],Body:[0.0f,13.0f,0.0f],RightArm:[-22.0f,31.0f,10.0f],LeftArm:[145.0f,22.0f,-49.0f],RightLeg:[6.0f,-20.0f,0.0f],LeftLeg:[-6.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=36}] run data merge entity @s {Pose:{Head:[4.0f,0.0f,0.0f],Body:[4.0f,0.0f,0.0f],RightArm:[30.0f,22.0f,-20.0f],LeftArm:[30.0f,-20.0f,21.0f],RightLeg:[0.0f,0.0f,5.0f],LeftLeg:[0.0f,0.0f,-5.0f]}}
execute if entity @s[scores={as_trigger=37}] run data merge entity @s {Pose:{Head:[63.0f,0.0f,0.0f],Body:[10.0f,0.0f,0.0f],RightArm:[-5.0f,0.0f,5.0f],LeftArm:[-5.0f,0.0f,-5.0f],RightLeg:[-5.0f,-10.0f,5.0f],LeftLeg:[-5.0f,16.0f,-5.0f]}}
execute if entity @s[scores={as_trigger=38}] run data merge entity @s {Pose:{Head:[-11.0f,0.0f,0.0f],Body:[-4.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,100.0f],LeftArm:[0.0f,0.0f,-100.0f],RightLeg:[-8.0f,0.0f,60.0f],LeftLeg:[-8.0f,0.0f,-60.0f]}}
execute if entity @s[scores={as_trigger=39}] run data merge entity @s {Pose:{Head:[-22.0f,25.0f,0.0f],Body:[-4.0f,10.0f,0.0f],RightArm:[-153.0f,34.0f,-3.0f],LeftArm:[4.0f,18.0f,0.0f],RightLeg:[-4.0f,17.0f,2.0f],LeftLeg:[6.0f,24.0f,0.0f]}}
execute if entity @s[scores={as_trigger=141}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[-15.0f,-45.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=142}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[-90.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}
#
# Tag the armor stand as modified
#
tag @s add as_modified
