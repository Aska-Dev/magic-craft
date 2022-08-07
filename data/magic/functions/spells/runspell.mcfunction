
execute as @s[scores={mana=5..}] run playsound minecraft:item.trident.riptide_3 master @a[distance=..2]
execute as @s[scores={mana=5..}] run scoreboard players remove @s mana 5
execute as @s[scores={mana=5..}] run effect give @s speed 5 2 
scoreboard players set @s SpellUsed 0