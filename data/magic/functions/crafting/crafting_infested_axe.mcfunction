summon item ~ ~ ~ {Tags:["craft"],Item:{id:"minecraft:iron_axe",Count:1b,tag:{display:{Name:'{"text":"Infested Axe","color":"white","italic":false}'},HideFlags:1,CustomModelData:1680013,infestedaxe:1b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:1s}]}}}
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:iron_axe",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:iron_nugget",Count:1b}},sort=nearest,limit=1]
execute at @e[tag=craft] run playsound minecraft:block.beacon.power_select master @a[distance=..10]
execute at @e[tag=craft] run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.1 20 force
execute as @e[tag=craft] run tag @s remove craft
