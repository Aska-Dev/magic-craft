kill @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",tag:{sacarium:1b}}},sort=nearest,limit=1] 
summon armor_stand ~-0.23 ~2.25 ~0.05 {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:1b,Tags:["sacarium_h"],Pose:{RightArm:[-100f,90f,180f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:1680018}},{}]}
scoreboard players set @s sacariumTimer 5
scoreboard players set @s SacariumHitTimer 100
scoreboard players remove @s mana 2
tag @s add SacariumSentry
stopsound @s player block.beacon.deactivate
playsound block.beacon.activate player @a
give @s carrot_on_a_stick{display:{Name:'{"text":"Ring of Sacarium","color":"gold","italic":false}'},CustomModelData:1680019,sacariumring_h:1b} 1