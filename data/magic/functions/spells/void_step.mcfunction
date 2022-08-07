execute as @s[scores={mana=4..}] at @s if block ^ ^1 ^10 minecraft:air at @s run playsound minecraft:entity.enderman.teleport neutral @a[distance=..6]
execute at @s[scores={mana=4..}] if block ^ ^1 ^10 minecraft:air run particle minecraft:reverse_portal ~ ~ ~ 1 1 1 10 100 force
execute at @s[scores={mana=4..}] if block ^ ^1 ^10 minecraft:air run tp @s ^ ^1 ^10 
execute at @s[scores={mana=4..}] if block ^ ^1 ^10 minecraft:air run particle minecraft:reverse_portal ~ ~ ~ 1 1 1 10 100 force
execute as @s[scores={mana=4..}] at @s if block ^ ^1 ^10 minecraft:air run scoreboard players remove @s mana 4
execute at @s[scores={mana=4..}] unless block ^ ^1 ^10 minecraft:air run playsound minecraft:entity.enderman.hurt master @s

scoreboard players set @s SpellUsed 0