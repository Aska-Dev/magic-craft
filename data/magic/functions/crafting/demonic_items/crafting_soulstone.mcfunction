summon item ~ ~ ~ {Tags:["craft"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Soul Stone","color":"gray","italic":false}',Lore:['{"text":"Captured Souls: 10","color":"blue","italic":false}']},CustomModelData:1680024,soulstone:1b}}}
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:carrot_on_a_stick"}},sort=nearest,limit=1]
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:soul_sand",Count:2b}},sort=nearest,limit=1]
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:warped_stem",Count:4b}},sort=nearest,limit=1]
execute at @e[tag=craft] run playsound minecraft:block.beacon.power_select master @a[distance=..10]
execute at @e[tag=craft] run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.1 20 force
execute as @e[tag=craft] run tag @s remove craft
