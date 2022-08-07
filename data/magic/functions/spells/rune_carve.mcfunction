execute as @s[scores={mana=4..}] at @s if block ^ ^2. ^ minecraft:stone run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Chisel","color":"white","italic":false}',Lore:['{"text":"A simple carving tool","color":"gray","italic":true}']},CustomModelData:1680027,chisel:1b}}}
execute as @s[scores={mana=4..}] at @s if block ^ ^2. ^ minecraft:stone run setblock ^ ^2. ^ minecraft:air

scoreboard players set @s SpellUsed 0