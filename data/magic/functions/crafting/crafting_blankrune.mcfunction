summon item ~ ~ ~ {Tags:["craft"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Blank Rune","italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:1680026,blankrune:1b}}}
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:stone",Count:1b}},sort=nearest,limit=1]
execute at @e[tag=craft] run playsound minecraft:block.fire.extinguish master @a[distance=..10]
execute at @e[tag=craft] run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.1 20 force
execute as @p[tag=shaman] run scoreboard players remove @s mana 8
execute as @e[tag=craft] run tag @s remove craft
