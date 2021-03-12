tag @e[tag=CopperGolem,scores={MonsterHP=-10000..0}] add DeadMonster
tag @e[tag=CopperGolem,scores={MonsterHP=-10000..0}] remove WalkMonster
tag @e[tag=CopperGolem,scores={MonsterHP=-10000..0}] add AttackMonster

scoreboard players set @e[tag=CopperGolem,tag=DeadMonster] WalkAnim 0


scoreboard players add @e[tag=CopperGolem,tag=DeadMonster] DeathAnim 6

execute as @e[tag=CopperGolemHeart,tag=DeadMonster] run data merge entity @s {NoAI:1b,NoGravity:1b}

execute as @e[tag=CopperGolemHeart,tag=DeadMonster,scores={DeathAnim=6}] at @s run playsound entity.iron_golem.death master @a ~ ~ ~ 2 0.7
execute as @e[tag=CopperGolem,tag=!CopperGolemHeart,scores={DeathAnim=6}] at @s run data merge entity @s {Pose:{Head:[0f,0.1f,0f]}}

execute as @e[tag=CopperGolemHeart,tag=DeadMonster,scores={DeathAnim=..24}] at @s run tp @s ~ ~-0.2 ~

execute as @e[tag=CopperGolem,tag=CopperGolemHeart,tag=DeadMonster,scores={DeathAnim=1..}] at @s run kill @s
execute as @e[tag=CopperGolem,tag=DeadMonster,scores={DeathAnim=3000..}] at @s run kill @s

execute as @e[tag=CopperGolemBody,tag=DeadMonster,scores={DeathAnim=..96}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s DeathAnim
execute as @e[tag=CopperGolemRArm,tag=DeadMonster,scores={DeathAnim=..96}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s DeathAnim
execute as @e[tag=CopperGolemLArm,tag=DeadMonster,scores={DeathAnim=..96}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s DeathAnim
execute as @e[tag=CopperGolemBody,tag=DeadMonster,scores={DeathAnim=..24}] store result entity @s Pose.Head[1] float 1 run scoreboard players get @s DeathAnim
execute as @e[tag=CopperGolemRArm,tag=DeadMonster,scores={DeathAnim=..18}] store result entity @s Pose.Head[1] float 1 run scoreboard players get @s DeathAnim
execute as @e[tag=CopperGolemLArm,tag=DeadMonster,scores={DeathAnim=..96}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s DeathAnim
execute as @e[tag=CopperGolemRLeg,tag=DeadMonster,scores={DeathAnim=..96}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s DeathAnim
execute as @e[tag=CopperGolemLLeg,tag=DeadMonster,scores={DeathAnim=..96}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s DeathAnim