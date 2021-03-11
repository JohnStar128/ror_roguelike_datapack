# Dev function
execute as @e[tag=Chest] at @s if block ~ ~ ~ chest run setblock ~ ~ ~ air
kill @e[tag=Chest]
tellraw @s {"text":"done","color":"red"}