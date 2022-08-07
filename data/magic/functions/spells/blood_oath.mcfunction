execute as @s[scores={mana=10..}] run effect give @s instant_damage 1 1
execute at @s run particle minecraft:block redstone_block ~ ~0.5 ~ 0.2 0.5 0.2 0 20 force
execute as @s[scores={mana=10..}] run effect give @s strength 60 3
execute as @s[scores={mana=10..}] run effect give @s resistance 20 1
execute at @s[scores={mana=10..}] run playsound minecraft:entity.ender_dragon.growl master @a[distance=..8]
execute as @s[scores={mana=10..}] run scoreboard players remove @s mana 10

scoreboard players set @s SpellUsed 0