# Create scoreboards on load
scoreboard objectives add difTracker dummy
scoreboard objectives add desertInfo dummy
scoreboard objectives add moneyTracker dummy
scoreboard objectives add chestClick minecraft.custom:minecraft.open_chest
scoreboard objectives add RNGmax dummy
scoreboard objectives add RNGscore dummy
scoreboard objectives add WalkAnim dummy
scoreboard objectives add DeathAnim dummy
scoreboard objectives add AttackAnim dummy
scoreboard objectives add MonsterHP dummy
scoreboard objectives add MonsterUUID dummy

# Set some values
scoreboard players set $gameActive difTracker 0
scoreboard players set $One desertInfo 1
scoreboard players set $Zero desertInfo 0
scoreboard players set $chestCost difTracker 25