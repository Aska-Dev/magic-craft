item modify entity @s weapon.mainhand magic:glint_on
execute as @s at @s run tag @s add Speedrune
execute as @s[scores={windwalkerTimer=0}] run scoreboard players set @s windwalkerTimer 100

scoreboard players set @s SpellUsed 0