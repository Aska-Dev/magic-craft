scoreboard players set @p[tag=ActiveRitual] Soulstone 10
tellraw @p {"text":"Your ritual is finished","color":"aqua"}
summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Soul Stone","color":"gray","italic":false}',Lore:['{"text":"Captured Souls: 10","color":"blue","italic":false}']},CustomModelData:1680024,soulstone:1b}}}
function magic:blocks/demon_ritual/break_demon_ritual
