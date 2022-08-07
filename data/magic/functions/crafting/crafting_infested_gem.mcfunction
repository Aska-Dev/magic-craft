execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}}] at @s as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{bloodtear:1b},Count:4b}},distance=0..1,sort=nearest,limit=1] run summon item ~ ~ ~ {Tags:["craft"], Item:{id:"minecraft:iron_nugget",Count:1b,tag:{display:{Name:'{"text":"Infested Gem","color":"white","italic":false}'},CustomModelData:1680008,infestedgem:1b}}}
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:amethyst_shard",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:iron_nugget",Count:4b}},sort=nearest,limit=1]
execute at @e[tag=craft] run playsound minecraft:block.beacon.power_select master @a[distance=..10]
execute at @e[tag=craft] run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.1 20 force
execute as @e[tag=craft] run tag @s remove craft