# Desert
execute as @a[tag=Desert,predicate=!risk_of_rain:maps/desert] at @s run function risk_of_rain:void_out/void_out
#execute as @a[tag=Desert] at @s if score @s posX >= $boundMaxX desertInfo run function risk_of_rain:void_out/void_out
#execute as @a[tag=Desert] at @s if score @s posY >= $boundMaxY desertInfo run function risk_of_rain:void_out/void_out
#execute as @a[tag=Desert] at @s if score @s posZ >= $boundMaxZ desertInfo run function risk_of_rain:void_out/void_out
#execute as @a[tag=Desert] at @s if score @s posX <= $boundMinX desertInfo run function risk_of_rain:void_out/void_out
#execute as @a[tag=Desert] at @s if score @s posY <= $boundMinY desertInfo run function risk_of_rain:void_out/void_out
#execute as @a[tag=Desert] at @s if score @s posZ <= $boundMinZ desertInfo run function risk_of_rain:void_out/void_out