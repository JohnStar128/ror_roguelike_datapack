##This matches a body part armorstand to it's heart-entity with the same UUID.

#> Check UUID
scoreboard players operation #current MonsterUUID = @s MonsterUUID

#> Make sure scores are the same
execute at @s as @e[tag=!CopperGolemHeart,tag=CopperGolem] if score @s MonsterUUID = #current MonsterUUID store result score @s MonsterHP run scoreboard players get @e[tag=CopperGolemHeart,limit=1,sort=nearest] MonsterHP
execute at @s as @e[tag=!CopperGolemHeart,tag=CopperGolem] if score @s MonsterUUID = #current MonsterUUID store result score @s WalkAnim run scoreboard players get @e[tag=CopperGolemHeart,limit=1,sort=nearest] WalkAnim
execute at @s as @e[tag=!CopperGolemHeart,tag=CopperGolem] if score @s MonsterUUID = #current MonsterUUID store result score @s AttackAnim run scoreboard players get @e[tag=CopperGolemHeart,limit=1,sort=nearest] AttackAnim


#> TP to the same UUID-entity
execute at @s as @e[tag=!CopperGolemHeart,tag=CopperGolem] if score @s MonsterUUID = #current MonsterUUID run tp @e[tag=CopperGolemHeart,limit=1,sort=nearest]
execute at @s as @e[tag=!CopperGolemHeart,tag=CopperGolem] if score @s MonsterUUID = #current MonsterUUID run tp @s ~ ~ ~