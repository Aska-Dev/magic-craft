execute as @s[scores={mana=..1}] run execute as @s at @s run effect clear @s speed
execute as @s[scores={mana=..1}] run item modify entity @s weapon.mainhand magic:glint_off
execute as @s[scores={mana=..1}] run tag @s remove Speedrune
execute as @s[scores={mana=2..}] run scoreboard players remove @s mana 2
execute as @s[scores={mana=2..}] run scoreboard players set @s windwalkerTimer 100