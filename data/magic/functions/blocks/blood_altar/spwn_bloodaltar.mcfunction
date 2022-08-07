execute at @e[type=armor_stand,nbt={Tags:[bloodaltar]}] run setblock ~ ~ ~ minecraft:chiseled_deepslate keep
execute at @e[type=armor_stand,nbt={Tags:[bloodaltar]}] run summon item ~ ~1 ~ {NoGravity:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1680005,bloodaltar:1b}}}
kill @e[type=armor_stand,nbt={Tags:[bloodaltar]}]