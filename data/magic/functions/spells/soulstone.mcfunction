execute as @s[scores={Soulstone=1..}] at @s run playsound minecraft:entity.wither.hurt player @a
execute as @s[scores={Soulstone=1..}] at @s run particle minecraft:soul ~ ~ ~ 0.5 1 0.5 0 10 force
execute as @s[scores={Soulstone=1..}] at @s run particle minecraft:soul ~ ~ ~ 0.5 1 0.5 0 10 force
execute as @s[scores={Soulstone=1..}] run scoreboard players add @s mana 10

execute as @s[scores={Soulstone=1..}] run scoreboard players remove @s Soulstone 1
item modify entity @s weapon.mainhand magic:soulstone_lore
scoreboard players set @s SpellUsed 0

