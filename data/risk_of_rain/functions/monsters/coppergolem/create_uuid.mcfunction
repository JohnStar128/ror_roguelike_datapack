
#> Uses UUIDRNG to grab a random number between 0 and 2147483647 for monsters.
execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:["MonsterUUID","CopperGolemUUID"],Duration:20}

scoreboard players set @e[tag=CopperGolemUUID] RNGmax 2147483647
execute as @e[tag=CopperGolemUUID] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=CopperGolemUUID] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute as @e[tag=NewCopperGolem] unless entity @s[scores={RNGscore=0..}] store result score @s MonsterUUID run scoreboard players get @e[tag=CopperGolemUUID,limit=1,sort=nearest] RNGscore

tag @e[tag=NewCopperGolem] remove NewCopperGolem
kill @e[tag=CopperGolemUUID]