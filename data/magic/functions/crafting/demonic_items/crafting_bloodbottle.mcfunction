summon item ~ ~ ~ {Tags:["craft"], Item:{id:"minecraft:sugar",Count:1b,tag:{display:{Name:'{"text":"Blood Bottle","color":"white","italic":false}'},CustomModelData:1680031,bloodbottle:1b}}}
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:glass_bottle",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:iron_nugget",Count:4b}},sort=nearest,limit=1]
execute at @e[tag=craft] run playsound minecraft:block.beacon.power_select master @a[distance=..10]
execute at @e[tag=craft] run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.1 20 force
execute as @e[tag=craft] run tag @s remove craft
