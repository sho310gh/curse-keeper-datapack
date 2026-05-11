# ============================================================
# curse_keeper:cleanse/on_cleanse
# Removes curse, increments tier, starts cooldown.
# ============================================================

# Broadcast first while tier info is still intact
function curse_keeper:cleanse/broadcast

# Check if this was tier 3 — season complete
execute if score @s ck.tier matches 3 run function curse_keeper:cleanse/season_complete
execute if score @s ck.tier matches 3 run return 0

# Increment tier and update tier tags
execute if score @s ck.tier matches 2 run tag @s remove ck.tier2
execute if score @s ck.tier matches 2 run tag @s add ck.tier3
execute if score @s ck.tier matches 2 run scoreboard players set @s ck.tier 3

execute if score @s ck.tier matches 1 run tag @s remove ck.tier1
execute if score @s ck.tier matches 1 run tag @s add ck.tier2
execute if score @s ck.tier matches 1 run scoreboard players set @s ck.tier 2

# Remove curse tags
tag @s remove ck.cursed
tag @s remove ck.curse_1
tag @s remove ck.curse_2
tag @s remove ck.curse_3
tag @s remove ck.curse_4
tag @s remove ck.curse_5
tag @s remove ck.curse_6
scoreboard players set @s ck.curse_id 0

# Clean up enforcement side effects
effect clear @s minecraft:hunger
attribute @s minecraft:max_health base set 20
execute as @s run attribute @s minecraft:movement_speed base set 0.1

# Start cooldown
function curse_keeper:util/start_cooldown