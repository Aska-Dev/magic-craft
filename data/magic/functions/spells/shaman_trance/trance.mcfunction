tag @s add inTrance
kill @e[type=item,nbt={Item:{id:"minecraft:sugar",Count:1b}},sort=nearest,limit=1]
scoreboard players set @p tranceTimer 400
effect give @p[tag=inTrance] minecraft:blindness 1000000 255 true
effect give @p[tag=inTrance] minecraft:slowness 1000000 255 true
effect give @p[tag=inTrance] minecraft:nausea 1000000 255 true
effect give @p[tag=inTrance] minecraft:resistance 1000000 255 true