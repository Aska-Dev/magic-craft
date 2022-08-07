kill @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",tag:{sacarium:1b}}},sort=nearest,limit=1] 
scoreboard players set @s sacariumTimer 5
execute as @s at @s run function magic:blocks/sacarium/spawn_attack_sacarium
tag @s add SacariumWielder
stopsound @s player block.beacon.deactivate
playsound block.beacon.activate player @a
give @s carrot_on_a_stick{display:{Name:'{"text":"Ring of Sacarium","color":"gold","italic":false}'},CustomModelData:1680019,sacariumring:1b} 1