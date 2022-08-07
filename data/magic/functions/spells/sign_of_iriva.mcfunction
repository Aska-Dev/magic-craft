effect give @s minecraft:hunger 2 200 true
execute at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.4 1 0.4 1 20 force
execute at @s run playsound minecraft:block.amethyst_block.step ambient @a
tellraw @s[tag=!sorcerer] {"text": "A warm feeling waves through your body as you feel the welcoming touch of your goddess", "color": "gold"}
execute as @s[tag=!sorcerer] run tag @s add sorcerer
scoreboard players add @s mana 2
scoreboard players set @s SpellUsed 0