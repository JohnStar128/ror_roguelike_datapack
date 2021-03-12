#> Clear handslot from wandering traders to prevent them from drinking milk
execute as @e[type=wandering_trader] run replaceitem entity @s weapon.mainhand air



#> Copper Golem related functions
execute as @e[tag=CopperGolemHeart] at @s run function risk_of_rain:monsters/coppergolem/searchmatch
function risk_of_rain:monsters/coppergolem/deathanimation
function risk_of_rain:monsters/coppergolem/walkanimation