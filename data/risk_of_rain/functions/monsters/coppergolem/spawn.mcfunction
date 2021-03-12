summon wandering_trader ~ ~ ~ {Tags:["CopperGolem","CopperGolemHeart","NewCopperGolem","MonsterHeart"],Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:11,Amplifier:0,Duration:999999,ShowParticles:0b},{Id:12,Amplifier:0,Duration:999999,ShowParticles:0b},{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
scoreboard players set @e[tag=NewCopperGolem,tag=CopperGolemHeart] MonsterHP 100
summon armor_stand ~ ~ ~ {Tags:["CopperGolem","CopperGolemBody","NewCopperGolem"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Pose:{Head:[0f,0.1f,0f]}}
summon armor_stand ~ ~ ~ {Tags:["CopperGolem","CopperGolemRArm","NewCopperGolem"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Pose:{Head:[0f,0.1f,0f]}}
summon armor_stand ~ ~ ~ {Tags:["CopperGolem","CopperGolemLArm","NewCopperGolem"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Pose:{Head:[0f,0.1f,0f]}}
summon armor_stand ~ ~ ~ {Tags:["CopperGolem","CopperGolemRLeg","NewCopperGolem"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Pose:{Head:[0f,0.1f,0f]}}
summon armor_stand ~ ~ ~ {Tags:["CopperGolem","CopperGolemLLeg","NewCopperGolem"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Pose:{Head:[0f,0.1f,0f]}}

execute as @e[tag=CopperGolemBody,tag=NewCopperGolem] run replaceitem entity @s armor.head diamond_hoe{CustomModelData:3}
execute as @e[tag=CopperGolemRArm,tag=NewCopperGolem] run replaceitem entity @s armor.head diamond_hoe{CustomModelData:4}
execute as @e[tag=CopperGolemLArm,tag=NewCopperGolem] run replaceitem entity @s armor.head diamond_hoe{CustomModelData:5}
execute as @e[tag=CopperGolemRLeg,tag=NewCopperGolem] run replaceitem entity @s armor.head diamond_hoe{CustomModelData:6}
execute as @e[tag=CopperGolemLLeg,tag=NewCopperGolem] run replaceitem entity @s armor.head diamond_hoe{CustomModelData:7}

function risk_of_rain:monsters/coppergolem/create_uuid