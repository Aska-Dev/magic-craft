scoreboard objectives add mana dummy
scoreboard objectives add sacrificeUse dummy
scoreboard players set @a mana 20
scoreboard objectives add SpellUsed minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add sacariumTimer dummy
scoreboard objectives add SacariumHitTimer dummy
scoreboard players set @a sacariumTimer 0
scoreboard objectives add windwalkerTimer dummy
scoreboard players set @a windwalkerTimer 0
scoreboard objectives add playerSneak minecraft.custom:sneak_time
scoreboard objectives add Soulstone dummy
scoreboard objectives add tranceTimer dummy
scoreboard objectives add netherAuraTimer dummy
tellraw @a {"text": "Loading complete!", "color": "aqua"}
tellraw @a {"text": "Askas Magic Pack is now available", "color": "green"}
gamerule doDaylightCycle false
gamerule doWeatherCycle false
weather clear