kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{sacariumring:1b}}},sort=nearest,limit=1]
scoreboard players set @s sacariumTimer 5
execute as @s at @s run function magic:blocks/sacarium/break_attack_sacarium
tag @s remove SacariumWielder
stopsound @s player block.beacon.activate
playsound block.beacon.deactivate player @a
give @s netherite_sword{display:{Name:'{"text":"Sacarium","color":"gold","italic":false}',Lore:['{"text":"Hand of the Goddess","color":"gray","italic":false}','{"text":"Field of Divinity","color":"gray","italic":false}']},HideFlags:4,Unbreakable:1b,CustomModelData:1680018,sacarium:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID:[I;-1260580008,-916307820,-1729153484,1983432411],Slot:"mainhand"}]} 1