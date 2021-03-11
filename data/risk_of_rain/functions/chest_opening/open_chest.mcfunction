#particle happy_villager ~ ~ ~ 0 0 0 1 1
execute if block ~ ~ ~ air positioned ^ ^ ^.100 run function risk_of_rain:chest_opening/open_chest
execute if block ~ ~ ~ chest positioned ^ ^ ^.100 if score @s moneyTracker >= $chestCost difTracker run loot spawn ~ ~ ~ loot risk_of_rain:item_pool
execute if block ~ ~ ~ chest positioned ^ ^ ^.100 if score @s moneyTracker >= $chestCost difTracker run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:happy_villager",Radius:1,Duration:1}
execute if block ~ ~ ~ chest positioned ^ ^ ^.100 if score @s moneyTracker >= $chestCost difTracker run scoreboard players operation @s moneyTracker -= $chestCost difTracker
execute if block ~ ~ ~ chest positioned ^ ^ ^.100 if score @s moneyTracker >= $chestCost difTracker run setblock ~ ~ ~ air
execute if block ~ ~ ~ chest positioned ^ ^ ^.100 if score @s moneyTracker >= $chestCost difTracker run scoreboard players set @a[scores={chestClick=1..}] chestClick 0
scoreboard players set @s chestClick 0