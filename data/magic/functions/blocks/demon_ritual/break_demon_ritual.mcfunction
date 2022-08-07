execute at @s run kill @e[type=armor_stand,sort=nearest,limit=1,tag=demonic2]
tellraw @p[limit=1,sort=nearest] {"text":"Your ritual ended","color":"red"}
kill @s