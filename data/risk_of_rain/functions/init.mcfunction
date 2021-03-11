# Create scoreboards on load
scoreboard objectives add difTracker dummy
scoreboard objectives add desertInfo dummy
scoreboard objectives add moneyTracker dummy
scoreboard objectives add chestClick minecraft.custom:minecraft.open_chest

# Set some values
scoreboard players set $gameActive difTracker 0
scoreboard players set $One desertInfo 1
scoreboard players set $Zero desertInfo 0
scoreboard players set $chestCost difTracker 25