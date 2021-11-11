#> Clear handslot from wandering traders to prevent them from drinking milk
execute as @e[type=wandering_trader] run item replace entity @s weapon.mainhand with air



#> Copper Golem related functions
execute as @e[tag=CopperGolemHeart] at @s run function risk_of_rain:monsters/coppergolem/searchmatch
function risk_of_rain:monsters/coppergolem/deathanimation
function risk_of_rain:monsters/coppergolem/walkanimation
function risk_of_rain:monsters/coppergolem/attackanimation