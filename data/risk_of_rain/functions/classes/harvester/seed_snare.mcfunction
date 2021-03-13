# Give every snowball thrown by The Harvester the SeedSnare tag
execute as @e[type=snowball] at @s if entity @a[tag=Harvester,limit=1,sort=nearest,distance=..2] run tag @s add SeedSnare
execute as @e[tag=SeedSnare] at @s run data merge entity @s {Invisible:1b,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b}]}

# Make seed snare invisible 
# Spawn armor stand wearing an item with a fancy model
# Teleport that stand to it constantly, do some fancy particles too
execute as @e[tag=SeedSnare,tag=!SeedSnareComplete] at @s run summon armor_stand ~ ~ ~ {Tags:["SeedSnareStand"],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:10}}]}
execute as @e[tag=SeedSnare,tag=!SeedSnareComplete] at @s run tag @s add SeedSnareComplete
execute as @e[tag=SeedSnare,tag=SeedSnareComplete] at @s positioned ~ ~-2 ~ run tp @e[tag=SeedSnareStand] ~ ~ ~

# While the snare is in flight, increment it's tracking score by 1.
# When it reaches 5, apply artificial gravity to it
execute as @e[tag=SeedSnare,tag=SeedSnareComplete] at @s run scoreboard players add @s Harvester 1
execute as @e[tag=SeedSnare,tag=SeedSnareComplete,scores={Harvester=5..}] at @s store result entity @s Motion[1] double 1 run scoreboard players get $Gravity Harvester
execute as @e[tag=SeedSnare,tag=SeedSnareComplete,scores={Harvester=5..}] at @s run scoreboard players set @s Harvester 0