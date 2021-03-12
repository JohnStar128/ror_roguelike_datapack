#Add tag
execute as @e[tag=CopperGolem,tag=!AttackMonster,tag=!DeadMonster] unless entity @s[nbt={Motion:[0.0,0.0,0.0]}] run tag @s add WalkMonster

#> Walk towards nearest player in a certain radius (Not LOS-based yet.)
execute as @e[tag=CopperGolemHeart,tag=!DeadMonster] at @s if entity @p[distance=..50] run data modify entity @s WanderTarget.X set from entity @p[distance=..50] Pos[0]
execute as @e[tag=CopperGolemHeart,tag=!DeadMonster] at @s if entity @p[distance=..50] run data modify entity @s WanderTarget.Y set from entity @p[distance=..50] Pos[1]
execute as @e[tag=CopperGolemHeart,tag=!DeadMonster] at @s if entity @p[distance=..50] run data modify entity @s WanderTarget.Z set from entity @p[distance=..50] Pos[2]

#> Animation stuff
scoreboard players add @e[tag=CopperGolem,tag=WalkMonster,tag=!DeadMonster] WalkAnim 6
scoreboard players set @e[tag=CopperGolem,tag=DeadMonster] WalkAnim 0

#> Sounds
execute as @e[tag=CopperGolemHeart,tag=!DeadMonster,scores={WalkAnim=30}] at @s run playsound minecraft:entity.iron_golem.step master @a ~ ~ ~ 2 0.7
execute as @e[tag=CopperGolemHeart,tag=!DeadMonster,scores={WalkAnim=60}] at @s run playsound minecraft:entity.iron_golem.step master @a ~ ~ ~ 2 0.7

#> Body wobble
execute as @e[tag=CopperGolemBody,tag=!DeadMonster,scores={WalkAnim=..32}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players get @s WalkAnim
execute as @e[tag=CopperGolemBody,tag=!DeadMonster,scores={WalkAnim=32..64}] store result entity @s Pose.Head[0] float -0.05 run scoreboard players get @s WalkAnim

#> Move legs
execute as @e[tag=CopperGolemRLeg,tag=!DeadMonster,scores={WalkAnim=..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s WalkAnim
execute as @e[tag=CopperGolemLLeg,tag=!DeadMonster,scores={WalkAnim=..30}] store result entity @s Pose.Head[0] float -1 run scoreboard players get @s WalkAnim

execute as @e[tag=CopperGolemLLeg,tag=!DeadMonster,scores={WalkAnim=36..66}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s WalkAnim
execute as @e[tag=CopperGolemRLeg,tag=!DeadMonster,scores={WalkAnim=36..66}] store result entity @s Pose.Head[0] float -1 run scoreboard players get @s WalkAnim

scoreboard players reset @e[tag=CopperGolemHeart,scores={WalkAnim=66..}] WalkAnim

tag @e[tag=CopperGolem] remove WalkMonster