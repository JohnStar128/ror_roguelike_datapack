#> Add attack monster tag, remove other movement tags
execute as @e[tag=CopperGolemHeart] at @s if entity @p[distance=..5] run tag @s add AttackMonster
tag @e[tag=CopperGolem,tag=AttackMonster] remove WalkMonster
scoreboard players reset @e[tag=CopperGolem,tag=AttackMonster] WalkAnim

#> Reset walk animation score to prevent potential bug.
scoreboard players set @e[tag=CopperGolem,tag=DeadMonster] AttackAnim 0


scoreboard players add @e[tag=CopperGolem,tag=AttackMonster,tag=!DeadMonster] AttackAnim 2
scoreboard players add @e[tag=CopperGolem,tag=AttackMonster,scores={AttackAnim=30..},tag=!DeadMonster] AttackAnim 2

execute as @e[tag=CopperGolemHeart,tag=AttackMonster,scores={AttackAnim=30..},tag=!DeadMonster] run data merge entity @s {NoAI:1b,NoGravity:1b}

#> Changes the pose of the armorstand body parts, pretty much does the actual animation work.
execute as @e[tag=CopperGolemBody,scores={AttackAnim=1..30}] store result entity @s Pose.Head[0] float -1 run scoreboard players get @s AttackAnim
execute as @e[tag=CopperGolemBody,scores={AttackAnim=1..30}] store result entity @s Pose.Head[1] float -1 run scoreboard players get @s AttackAnim
execute as @e[tag=CopperGolemRArm,scores={AttackAnim=1..30}] store result entity @s Pose.Head[1] float -2 run scoreboard players get @s AttackAnim
execute as @e[tag=CopperGolemRArm,scores={AttackAnim=1..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s AttackAnim
execute as @e[tag=CopperGolemLArm,scores={AttackAnim=1..30}] store result entity @s Pose.Head[1] float -1 run scoreboard players get @s AttackAnim
execute as @e[tag=CopperGolemRArm,scores={AttackAnim=1..30}] store result entity @s Pose.Head[2] float -1 run scoreboard players get @s AttackAnim
execute as @e[tag=CopperGolemLArm,scores={AttackAnim=1..30}] store result entity @s Pose.Head[2] float -1 run scoreboard players get @s AttackAnim

execute as @e[tag=CopperGolemBody,scores={AttackAnim=36}] at @s run playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 2 0.8
execute as @e[tag=CopperGolemBody,scores={AttackAnim=36}] at @s run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 1 0.8
execute as @e[tag=CopperGolemBody,scores={AttackAnim=36..66}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s AttackAnim
execute as @e[tag=CopperGolemBody,scores={AttackAnim=36..66}] store result entity @s Pose.Head[1] float 1 run scoreboard players get @s AttackAnim
execute as @e[tag=CopperGolemRArm,scores={AttackAnim=36..66}] store result entity @s Pose.Head[1] float 2 run scoreboard players get @s AttackAnim
execute as @e[tag=CopperGolemRArm,scores={AttackAnim=36..66}] store result entity @s Pose.Head[0] float -1 run scoreboard players get @s AttackAnim
execute as @e[tag=CopperGolemLArm,scores={AttackAnim=36..66}] store result entity @s Pose.Head[1] float 1 run scoreboard players get @s AttackAnim
execute as @e[tag=CopperGolemRArm,scores={AttackAnim=36..66}] store result entity @s Pose.Head[2] float 1 run scoreboard players get @s AttackAnim
execute as @e[tag=CopperGolemLArm,scores={AttackAnim=36..66}] store result entity @s Pose.Head[2] float 1 run scoreboard players get @s AttackAnim

##execute as @e[tag=CopperGolemBody,scores={AttackAnim=60}] at @s run PLAYER DAMAGE RELATED FUNCTION OR COMMAND HERE

execute as @e[tag=CopperGolem,tag=!CopperGolemHeart,scores={AttackAnim=66..}] at @s run data merge entity @s {Pose:{Head:[0f,0.1f,0f]}}
tag @e[tag=CopperGolem,tag=AttackMonster,scores={AttackAnim=70..}] remove AttackMonster
execute as @e[tag=CopperGolem,scores={AttackAnim=70..}] run data merge entity @s {NoAI:0b,NoGravity:0b}
scoreboard players reset @e[tag=CopperGolem,scores={AttackAnim=70..}] AttackAnim
