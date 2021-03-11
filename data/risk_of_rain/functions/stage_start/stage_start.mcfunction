# Figure out how many chests to spawn
scoreboard players set $precDesertStand desertInfo 0
execute as @e[tag=mapActive] at @s store result score $precDesertStand desertInfo run loot spawn ~ ~-200 ~ loot risk_of_rain:rng
function risk_of_rain:chest_placing/chest_placing