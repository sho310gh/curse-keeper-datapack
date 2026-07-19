# ============================================================
# curse_keeper:cleanse/heavy_plate
# Triggered when player has 50 skeleton AND 50 zombie kills.
# ============================================================

execute unless entity @s[tag=ck.curse_20] run return 0

# Remove speed modifier
attribute @s minecraft:movement_speed modifier remove curse_keeper:heavy_plate_speed

# Reset kill counters
scoreboard players set @s ck.hp_kill_skele 0
scoreboard players set @s ck.hp_kill_zombie 0
scoreboard players set @s ck.armor_count 0

function curse_keeper:cleanse/on_cleanse