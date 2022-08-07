summon item ~ ~ ~ {Tags:["craft"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Divine Focus","color":"gold","italic":false}',Lore:[]},CustomModelData:1680022,bloodfocus:1b,Enchantments:[{}]}}}
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:diamond",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:iron_nugget",Count:4b}},sort=nearest,limit=1]
execute at @e[tag=craft] run playsound minecraft:block.beacon.power_select master @a[distance=..10]
execute at @e[tag=craft] run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0 0 0.1 20 force
execute as @e[tag=craft] run tag @s remove craft
