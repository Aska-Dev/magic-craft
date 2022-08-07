execute at @s[scores={mana=2..}] run fill ~3 ~2 ~3 ~-3 ~-1 ~-3 minecraft:air replace minecraft:water
execute at @s[scores={mana=2..}] as @e[distance=..5] run data merge entity @e[type=#magic:creatures,limit=1,nbt={Fire:-1s},sort=nearest,distance=..5] {Fire:80b}
execute at @s[scores={mana=2..}] run playsound minecraft:entity.ghast.shoot player @a
execute at @s[scores={mana=2..}] run particle flame ~ ~ ~ 2 2 2 0 4 force
execute at @s[scores={mana=2..}] run particle flame ~ ~ ~ 2 2 2 0 4 force
execute at @s[scores={mana=2..}] run particle flame ~ ~ ~ 2 2 2 0 4 force
execute at @s[scores={mana=2..}] run particle flame ~ ~ ~ 2 2 2 0 4 force
execute at @s[scores={mana=2..}] run particle flame ~ ~ ~ 2 2 2 0 4 force
execute at @s[scores={mana=2..}] run particle flame ~ ~ ~ 2 2 2 0 4 force
execute as @s[scores={mana=2..}] run scoreboard players remove @s mana 2
scoreboard players set @s SpellUsed 0