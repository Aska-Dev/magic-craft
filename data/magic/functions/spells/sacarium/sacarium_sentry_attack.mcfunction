execute as @e[type=#magic:creatures,distance=..6,tag=!newMob] run scoreboard players set @s SacariumHitTimer 0
execute as @e[type=#magic:creatures,distance=..6] run tag @s add newMob
execute as @e[type=#magic:creatures,distance=..6,scores={SacariumHitTimer=0}] at @s run summon lightning_bolt
execute as @e[type=#magic:creatures,distance=..6,scores={SacariumHitTimer=0}] run scoreboard players set @s SacariumHitTimer 30