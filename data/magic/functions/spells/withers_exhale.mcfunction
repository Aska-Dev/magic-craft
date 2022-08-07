execute if entity @s[scores={mana=10..}] at @s run effect give @e[distance=..5] wither 10 5
execute as @s[scores={mana=10..}] run effect clear @s wither
execute at @s[scores={mana=10..}] run particle minecraft:soul ~ ~0.2 ~ 1.5 0.1 1.5 1 4 force
execute at @s[scores={mana=10..}] run particle minecraft:soul ~ ~0.2 ~ 1.5 0.1 1.5 1 4 force
execute at @s[scores={mana=10..}] run particle minecraft:soul ~ ~0.2 ~ 1.5 0.1 1.5 1 4 force
execute at @s[scores={mana=10..}] run particle minecraft:soul ~ ~0.2 ~ 1.5 0.1 1.5 1 4 force
execute at @s[scores={mana=10..}] run particle minecraft:soul ~ ~0.2 ~ 1.5 0.1 1.5 1 4 force
execute at @s[scores={mana=10..}] run particle minecraft:soul ~ ~0.2 ~ 1.5 0.1 1.5 1 4 force
execute at @s[scores={mana=10..}] run playsound minecraft:entity.wither.ambient master @a[distance=..8]
execute as @s[scores={mana=10..}] run scoreboard players remove @s mana 10


scoreboard players set @s SpellUsed 0