summon item ~ ~ ~ {Tags:["craft"],Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"text":"Demonic Ritual","color":"dark_red","italic":false}'},CustomModelData:1680023,EntityTag:{NoGravity:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:1b,Tags:["DemonicRitual","NoConfig"],DisabledSlots:4144959}}}}
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:sugar"}},sort=nearest,limit=1]
execute as @e[tag=craft] run kill @e[type=item,nbt={Item: {id:"minecraft:sugar"}},sort=nearest,limit=1]
execute at @e[tag=craft] run playsound minecraft:block.beacon.power_select master @a[distance=..10]
execute at @e[tag=craft] run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.1 20 force
execute as @e[tag=craft] run tag @s remove craft
