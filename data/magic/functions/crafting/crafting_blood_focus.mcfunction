execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}}] at @s as @e[type=item,nbt={Item:{id:"minecraft:diamond"}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{infestedgem:1b},Count:4b}},distance=0..1,sort=nearest,limit=1] run summon item ~ ~ ~ {Tags:["craft"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Demonic Focus","color":"dark_red","italic":false}',Lore:['{"text":"You sense a strange power","color":"dark_purple"}','{"text":"inside the crystal","color":"dark_purple"}']},CustomModelData:1680004,bloodfocus:1b,Enchantments:[{}]}}}
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:diamond",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:iron_nugget",Count:4b}},sort=nearest,limit=1]
execute at @e[tag=craft] run playsound minecraft:block.beacon.power_select master @a[distance=..10]
execute at @e[tag=craft] run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.1 20 force
execute as @e[tag=craft] run tag @s remove craft
