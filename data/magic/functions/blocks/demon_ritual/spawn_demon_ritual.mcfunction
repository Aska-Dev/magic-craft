execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["demonic2"]}
execute at @s run tellraw @p[limit=1,sort=nearest] {"text":"You started a ritual","color":"green"}
data merge entity @s {Pose:{RightArm:[-30f,100f,-120f]}}
tag @p add ActiveRitual
tag @s remove NoConfig