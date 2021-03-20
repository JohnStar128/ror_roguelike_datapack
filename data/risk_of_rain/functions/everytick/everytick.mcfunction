# Jump pad stuff
execute as @a at @s if block ~ ~-2 ~ #risk_of_rain:jump_pads run effect give @s levitation 1 127 true
execute as @a at @s if block ~ ~-2 ~ air run effect clear @s levitation

# Particles for jump pads
particle campfire_cosy_smoke 34 8 40 0.5 0.5 0.5 0.1 10 force

# Update chest armor stand price nametags
data merge block 24 0 26 {Text1:"{\"text\":\"$\",\"color\":\"yellow\",\"extra\":[{\"score\":{\"objective\":\"difTracker\",\"name\":\"$chestCost\"}}]}"}
execute as @e[tag=Chest] at @s run data modify entity @s CustomName set from block 24 0 26 Text1

# Check for chests
execute as @a[scores={chestClick=1..}] at @s positioned ~ ~1.5 ~ run function risk_of_rain:chest_opening/open_chest

# Keep some static scoreboard values static
scoreboard players set @a chestClick 0

# Remove price armor stands if chest is purchased
execute as @e[tag=Chest] at @s if block ~ ~ ~ air run kill @s
# Actionbar title displaying money
execute as @a at @s if score $gameActive difTracker matches 1.. run title @a actionbar {"text":"100/100 ","color":"green","bold":"true","extra":[{"text":"$","color":"yellow"},{"score":{"objective":"moneyTracker","name":"@s"},"color":"gold","bold":"true"},{"text":" [","color":"gray"},{"text":"☻","color":"red","italic":"true","bold":"false"},{"text":"]","color":"gray"}]}

# Store every player's X/Y/Z to a scoreboard, used in voidout detection
execute as @a at @s store result score @a posX run data get entity @s Pos[0]
execute as @a at @s store result score @a posY run data get entity @s Pos[1]
execute as @a at @s store result score @a posZ run data get entity @s Pos[2]

# Voidout
function risk_of_rain:void_out/detect

# Monster loop
function risk_of_rain:monsters/loop

# Harvester loop
function risk_of_rain:classes/harvester/seed_snare
