execute at @s run kill @e[tag=sacarium_h,sort=nearest,limit=1]
tag @s remove SacariumSentry
scoreboard players set @s sacariumTimer 5
playsound block.beacon.deactivate player @s
clear @s carrot_on_a_stick{display:{Name:'{"text":"Ring of Sacarium","color":"gold","italic":false}'},CustomModelData:1680019,sacariumring_h:1b} 1
give @s netherite_sword{display:{Name:'{"text":"Sacarium","color":"gold","italic":false}',Lore:['{"text":"Hand of the Goddess","color":"gray","italic":false}','{"text":"Field of Divinity","color":"gray","italic":false}']},HideFlags:4,Unbreakable:1b,CustomModelData:1680018,sacarium:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID:[I;-1260580008,-916307820,-1729153484,1983432411],Slot:"mainhand"}]} 1
tellraw @s {"text":"Sacarium returned","color":"gold"}