#Mana-Leiste
execute as @a run function magic:bar
execute as @a[scores={mana=21..}] run scoreboard players set @s mana 20
execute as @a[scores={mana=..0}] run scoreboard players set @s mana 0

##Spells per Rechtsklick
#Allgemein
execute as @a[scores={SpellUsed=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{test:1b}}}] run function magic:test
execute as @a[scores={SpellUsed=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{enderia:1b}}}] run function magic:spells/void_step
#Dämonisch
execute as @a[tag=!sorcerer,tag=!shaman,scores={SpellUsed=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Knife:1b}}}] run function magic:spells/sacrifice
execute as @a[scores={SpellUsed=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{soulstone:1b}}}] run function magic:spells/soulstone
#Heilig
execute as @a[tag=!bloodmage,tag=!shaman,scores={SpellUsed=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{irivasign:1b}}}] run function magic:spells/sign_of_iriva
execute as @a[scores={SpellUsed=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{sacariumring:1b}}}] run function magic:spells/sacarium/sacarium_attack
#Schamanisch
execute as @a[tag=shaman,tag=Speedrune,scores={SpellUsed=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{speedrune:1b}}}] run function magic:spells/runes/rune_of_the_windwalker/windwalker_off
execute as @a[tag=shaman,scores={SpellUsed=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{speedrune:1b}}}] run function magic:spells/runes/rune_of_the_windwalker/windwalker_on


##Artefakt-Spells per Rechtsklick mit Fokus
#Allgemein
execute as @a[scores={SpellUsed=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{bloodfocus:1b}}],SelectedItem:{id:"minecraft:diamond_sword",tag:{withersword:1b}}}] run function magic:spells/withers_exhale
#Dämonisch
execute as @a[scores={SpellUsed=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{bloodfocus:1b}}],SelectedItem:{id:"minecraft:diamond_axe",tag:{ragnarok:1b}}}] run function magic:spells/blood_oath
execute as @a[scores={SpellUsed=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{bloodfocus:1b}}],SelectedItem:{id:"minecraft:diamond_sword",tag:{infernoblade:1b}}}] run function magic:spells/inferno_blade/nether_aura
#Heilig

##Passive Spells
#Allgemein
#Dämonisch
#Heilig
#Schamanisch
execute as @a[tag=Speedrune] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{speedrune:1b}}]}] run effect give @s speed 5 1

#Schamanisch

##FloorCrafting
#Blutaltar-Crafting
execute at @a[tag=bloodmage] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:diamond"}},limit=1,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{infestedgem:1b},Count:4b}},distance=0..1,sort=nearest] at @s run function magic:crafting/crafting_blood_focus
execute at @a[tag=bloodmage] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},limit=1,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{bloodtear:1b},Count:4b}},distance=0..1,sort=nearest] at @s run function magic:crafting/crafting_infested_gem
execute at @a[tag=bloodmage] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{infestedgem:1b}}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}},distance=0..1,sort=nearest,limit=1] at @s run function magic:crafting/crafting_infested_pickaxe
execute at @a[tag=bloodmage] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{infestedgem:1b},Count:4b}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:diamond_axe"}},distance=0..1,sort=nearest,limit=1] at @s run function magic:crafting/crafting_ragnarok
execute at @a[tag=bloodmage] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{infestedgem:1b},Count:1b}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}},distance=0..1,sort=nearest,limit=1] at @s run function magic:crafting/crafting_infested_sword
execute at @a[tag=bloodmage] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{infestedgem:1b},Count:1b}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_axe"}},distance=0..1,sort=nearest,limit=1] at @s run function magic:crafting/crafting_infested_axe
execute at @a[tag=bloodmage] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{infestedgem:1b},Count:1b}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_shovel"}},distance=0..1,sort=nearest,limit=1] at @s run function magic:crafting/crafting_infested_shovel
execute at @a[tag=bloodmage] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{infestedgem:1b},Count:1b}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_hoe"}},distance=0..1,sort=nearest,limit=1] at @s run function magic:crafting/crafting_infested_hoe
execute at @a[tag=bloodmage] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{infestedgem:1b},Count:1b}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_hoe"}},distance=0..1,sort=nearest,limit=1] at @s run function magic:crafting/crafting_infested_hoe
execute at @a[tag=bloodmage] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{bloodtear:1b},Count:4b}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}},distance=0..1,sort=nearest,limit=1] at @s run function magic:crafting/demonic_items/crafting_bloodbottle
execute at @a[tag=bloodmage] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:sugar",tag:{emptyscroll:1b}}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:sugar",tag:{bloodbottle:1b}}},distance=0..1,sort=nearest,limit=1] at @s run function magic:crafting/demonic_items/crafting_bloodritual
execute at @a[tag=bloodmage] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:warped_stem",Count:4b}},distance=0..1,sort=nearest,limit=1] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodfocus:1b}}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:soul_sand",Count:2b}},distance=0..1,sort=nearest,limit=1] run function magic:crafting/demonic_items/crafting_soulstone
#Holyaltar-Crafting
execute at @e[tag=sorcerer] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{holyaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{holyrelict:1b},Count:4b}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:diamond"}},distance=0..1,sort=nearest,limit=1] at @s run function magic:crafting/crafting_divine_focus
execute at @e[tag=sorcerer] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{holyaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{holyrelict:1b},Count:4b}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}},distance=0..1,sort=nearest,limit=1] at @s run function magic:crafting/divine_tools/crafting_divine_sword
execute at @e[tag=sorcerer] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{holyaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{holyrelict:1b},Count:4b}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_axe"}},distance=0..1,sort=nearest,limit=1] at @s run function magic:crafting/divine_tools/crafting_divine_axe
execute at @e[tag=sorcerer] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{holyaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{holyrelict:1b},Count:4b}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}},distance=0..1,sort=nearest,limit=1] at @s run function magic:crafting/divine_tools/crafting_divine_pickaxe
execute at @e[tag=sorcerer] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{holyaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{holyrelict:1b},Count:4b}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_shovel"}},distance=0..1,sort=nearest,limit=1] at @s run function magic:crafting/divine_tools/crafting_divine_shovel
execute at @e[tag=sorcerer] as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{holyaltar:1b}}},distance=..3] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{holyrelict:1b},Count:4b}},distance=0..1,sort=nearest,limit=1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_hoe"}},distance=0..1,sort=nearest,limit=1] at @s run function magic:crafting/divine_tools/crafting_divine_hoe
#LagerFeuer-Crafting
execute at @a[tag=shaman] as @e[type=item,nbt={Item:{id:"minecraft:stone",Count:1b}}] at @s as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{chisel:1b},Count:1b}},distance=0..1,sort=nearest,limit=1] at @s if entity @p[tag=shaman,distance=..4,scores={mana=8..}] if block ~ ~ ~ minecraft:campfire run function magic:crafting/crafting_blankrune

#Blöcke mit ArmourStands platzieren
execute as @e[type=armor_stand,nbt={Tags:[bloodaltar]}] run function magic:blocks/blood_altar/spwn_bloodaltar
execute as @e[type=armor_stand,nbt={Tags:[holyaltar]}] run function magic:blocks/holy_altar/spwn_holyaltar

#Blockparamter
#Blutaltar
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}}] at @s run execute unless block ~ ~-1 ~ minecraft:chiseled_deepslate run function magic:blocks/blood_altar/bloodaltar_break
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{bloodaltar:1b}}}] run particle minecraft:enchant ~ ~0.2 ~ 0 0.1 0 1 1
#Heiliger Altar
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{holyaltar:1b}}}] at @s run execute unless block ~ ~-1 ~ minecraft:chiseled_quartz_block run function magic:blocks/holy_altar/holyaltar_break
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{holyaltar:1b}}}] run particle minecraft:dolphin ~ ~0.2 ~ 0.3 0.3 0.3 1 1

##Rituale
#DemonicNormalAltar
execute as @e[type=armor_stand,tag=DemonicRitual,tag=NoConfig] run function magic:blocks/demon_ritual/spawn_demon_ritual
execute at @e[type=armor_stand,tag=DemonicRitual] run function magic:particles/demon_circle
execute at @e[type=armor_stand,tag=demonic2] run function magic:particles/demon_circle2
execute as @e[tag=DemonicRitual] at @s run tp @s ~ ~ ~ ~1 ~ 
execute as @e[tag=demonic2] at @s run tp @s ~ ~ ~ ~-1 ~
#SchamanenOpferRitual
execute as @e[type=item,nbt={Item:{id:"minecraft:wheat",Count:4b}}] at @s if entity @p[tag=shaman,distance=..4] if block ~ ~ ~ minecraft:campfire run function magic:rituals/spiritual_sacrifice/sacrifice
execute as @e[type=item,nbt={Item:{id:"minecraft:wheat",Count:8b}}] at @s if entity @p[tag=shaman,distance=..4] if block ~ ~ ~ minecraft:campfire run function magic:rituals/spiritual_sacrifice/full_sacrifice
#SchamanenTranceRitual
execute as @e[type=item,nbt={Item:{id:"minecraft:sugar",tag:{tarium:1b}}}] at @s if block ~ ~ ~ minecraft:campfire as @p[tag=!bloodmage,tag=!sorcerer,distance=..4] run function magic:spells/shaman_trance/trance

#Trance
execute as @a[tag=inTrance,scores={tranceTimer=0}] run function magic:spells/shaman_trance/trance_end

#Timer
scoreboard players remove @a[scores={sacariumTimer=1..}] sacariumTimer 1
scoreboard players remove @e[scores={SacariumHitTimer=1..}] SacariumHitTimer 1
scoreboard players remove @e[scores={tranceTimer=1..}] tranceTimer 1

#SacariumParamtere
execute as @a[tag=SacariumWielder,scores={sacariumTimer=..5}] at @s run tp @e[type=armor_stand,tag=sacarium,sort=nearest,limit=1] ^-0.3 ^ ^-0.5 facing ^ ^ ^10
execute at @e[tag=sacarium_h] run particle minecraft:soul_fire_flame ~ ~0.6 ~ 0.3 0.4 0.3 0.04 1 force
execute at @e[tag=sacarium_h] as @a[tag=SacariumSentry,distance=20..] run function magic:spells/sacarium/sacarium_sentry_return
execute at @e[tag=sacarium_h] as @a[tag=SacariumSentry,scores={SacariumHitTimer=0},sort=nearest,limit=1] run function magic:spells/sacarium/sacarium_sentry_costs
execute as @e[tag=sacarium_h] at @s run function magic:spells/sacarium/sacarium_sentry_attack
#EndRitual
execute as @e[type=armor_stand,tag=DemonicRitual,tag=!RitualActive] at @s unless entity @a[tag=ActiveRitual,distance=..5,sort=nearest,limit=1] run function magic:blocks/demon_ritual/break_demon_ritual

#SacariumDrop
execute at @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",tag:{sacarium:1b}}}] as @p[scores={sacariumTimer=0,playerSneak=..0},distance=..1.5] run function magic:spells/sacarium/sacarium_drop
execute at @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",tag:{sacarium:1b}}}] as @p[scores={sacariumTimer=0,playerSneak=1..,mana=2..},distance=..1.5] run function magic:spells/sacarium/sacarium_sentry_drop

#SacariumTake
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{sacariumring:1b}}}] as @p[scores={sacariumTimer=0},tag=SacariumWielder] run function magic:spells/sacarium/sacarium_take
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{sacariumring_h:1b}}}] as @p[scores={sacariumTimer=0},tag=SacariumSentry] run function magic:spells/sacarium/sacarium_sentry_take

#Soulstone-Ritual auf DemonRitual
execute as @e[type=armor_stand,tag=DemonicRitual,tag=!RitualActive] at @s at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{soulstone:1b}}}] run function magic:rituals/soulstone/ritual_soulstone_start
execute as @e[tag=SoulstoneRitual] at @s at @e[type=#magic:creatures,distance=..2] run function magic:rituals/soulstone/ritual_soulstone
execute as @e[tag=SoulstoneRitual,scores={Soulstone=10}] at @s run function magic:rituals/soulstone/ritual_soulstone_end

execute as @a[scores={playerSneak=1..}] run scoreboard players set @s playerSneak 0



