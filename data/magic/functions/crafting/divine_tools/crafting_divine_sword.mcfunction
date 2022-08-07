summon item ~ ~ ~ {Tags:["craft"],Item:{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Divine Sword","color":"white","italic":false}'},HideFlags:1,CustomModelData:1680025,divinesword:1b,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:smite",lvl:1s},{id:"minecraft:bane_of_arthropods",lvl:1s}]}}}
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:iron_sword",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:iron_nugget",Count:4b}},sort=nearest,limit=1]
execute at @e[tag=craft] run playsound minecraft:block.beacon.power_select master @a[distance=..10]
execute at @e[tag=craft] run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0 0 0.1 20 force
execute as @e[tag=craft] run tag @s remove craft