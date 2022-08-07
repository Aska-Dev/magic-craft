execute at @s run tag @p add crafter
execute as @p[tag=crafter] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:wheat",Count:8b}},sort=nearest,limit=1]
execute at @e[tag=crafter] run playsound minecraft:block.fire.extinguish master @a[distance=..10]
execute as @p[tag=crafter] run scoreboard players add @s mana 20
execute as @p[tag=crafter] run tellraw @s {"text": "The spirits grant you access to their powers...", "color": "aqua"}
execute as @p[tag=crafter] run tag @s remove crafter