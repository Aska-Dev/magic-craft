effect give @s minecraft:instant_damage 1 0
execute at @s run particle minecraft:block redstone_block ~ ~0.5 ~ 0.2 0.5 0.2 0 20 force
scoreboard players add @s mana 7
scoreboard players add @s sacrificeUse 1
tellraw @s[tag=!bloodmage] {"text": "As the blood runs down your arm, you feel an ancient power growing inside of you", "color": "red"}
execute as @s[tag=!bloodmage] run tag @s add bloodmage
execute as @s[scores={sacrificeUse=5..}] run give @s minecraft:iron_nugget{display:{Name:'{"text":"Blood Tear", "italic": false}'},CustomModelData:1680002,bloodtear:1b} 1
execute as @s[scores={sacrificeUse=5..}] run scoreboard players set @s sacrificeUse 0

scoreboard players set @s SpellUsed 0