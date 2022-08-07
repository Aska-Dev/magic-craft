execute at @e[type=armor_stand,nbt={Tags:[holyaltar]}] run setblock ~ ~ ~ minecraft:chiseled_quartz_block keep
execute at @e[type=armor_stand,nbt={Tags:[holyaltar]}] run summon item ~ ~1 ~ {NoGravity:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1680015,holyaltar:1b}}}
kill @e[type=armor_stand,nbt={Tags:[holyaltar]}]