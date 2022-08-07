execute as @s[scores={mana=..1}] run execute at @s run kill @e[tag=sacarium_h,sort=nearest,limit=1]
execute as @s[scores={mana=..1}] run tag @s remove SacariumSentry
execute as @s[scores={mana=..1}] run scoreboard players set @s sacariumTimer 5
execute as @s[scores={mana=..1}] run playsound block.beacon.deactivate player @s
execute as @s[scores={mana=..1}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Ring of Sacarium","color":"gold","italic":false}'},CustomModelData:1680019,sacariumring_h:1b} 1
execute as @s[scores={mana=..1}] run give @s netherite_sword{display:{Name:'{"text":"Sacarium","color":"gold","italic":false}',Lore:['{"text":"Hand of the Goddess","color":"gray","italic":false}','{"text":"Field of Divinity","color":"gray","italic":false}']},HideFlags:4,Unbreakable:1b,CustomModelData:1680018,sacarium:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID:[I;-1260580008,-916307820,-1729153484,1983432411],Slot:"mainhand"}]} 1
execute as @s[scores={mana=..1}] run tellraw @s {"text":"Sacarium returned","color":"gold"}
execute as @s[scores={mana=2..}] run scoreboard players remove @s mana 2
execute as @s[scores={mana=2..}] run scoreboard players set @s SacariumHitTimer 100