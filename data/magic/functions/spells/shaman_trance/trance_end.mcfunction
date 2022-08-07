effect clear @s[tag=inTrance] minecraft:blindness
effect clear @s[tag=inTrance] minecraft:slowness
effect clear @s[tag=inTrance] minecraft:nausea
effect clear @s[tag=inTrance] minecraft:resistance
execute as @s[tag=!shaman] run tellraw @p[tag=inTrance] {"text": "You sense a mysterious energy flowing through your body...", "color": "aqua"}
execute as @s[tag=!shaman] run tag @s add shaman
tellraw @s[tag=inTrance] {"text": "Your connection to the spirit world has been strengthened", "color": "aqua"}
tag @s[tag=inTrance] remove inTrance