execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}}] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{infestedgem:1b},Count:4b}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:diamond_axe"}},distance=0..1,sort=nearest,limit=1] at @s run summon item ~ ~ ~ {Tags:["craft"], HasVisualFire:1b,Glowing:0b,Item:{id:"minecraft:diamond_axe",Count:1b,tag:{display:{Name:'{"text":"Ragnarok","color":"red","bold":true,"italic":false}',Lore:['{"text":"Blood Oath","color":"gray","italic":false}']},HideFlags:1,CustomModelData:1680007,ragnarok:1b,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:unbreaking",lvl:1s}]}}}
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:diamond_axe",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:iron_nugget",Count:4b}},sort=nearest,limit=1]
execute at @e[tag=craft] run playsound minecraft:block.beacon.power_select master @a[distance=..10]
execute at @e[tag=craft] run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.1 20 force
execute as @e[tag=craft] run tag @s remove craft
