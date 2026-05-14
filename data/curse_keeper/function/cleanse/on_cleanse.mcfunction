# ============================================================
# curse_keeper:cleanse/on_cleanse
# Removes curse, increments tier, starts cooldown.
# ============================================================

# Broadcast first while tier info is still intact
function curse_keeper:cleanse/broadcast

# Remove curse tags first regardless of tier
tag @s remove ck.cursed
tag @s remove ck.curse_1
tag @s remove ck.curse_2
tag @s remove ck.curse_3
tag @s remove ck.curse_4
tag @s remove ck.curse_5
tag @s remove ck.curse_6
tag @s remove ck.curse_7
tag @s remove ck.curse_8
tag @s remove ck.curse_9
tag @s remove ck.curse_10
tag @s remove ck.curse_11
tag @s remove ck.curse_12
tag @s remove ck.curse_13
tag @s remove ck.curse_14
tag @s remove ck.curse_15
tag @s remove ck.curse_16
tag @s remove ck.debt_dying
tag @s remove ck.grave_sleeping
tag @s remove ck.soul_cleansing
tag @s remove ck.aggro_spider

scoreboard players set @s ck.debt_hearts 0
scoreboard players set @s ck.grave_hearts 0
scoreboard players set @s ck.curse_id 0
scoreboard players set @s ck.moon_timer 0
scoreboard players set @s ck.water_timer 0
scoreboard players set @s ck.spider_timer 0
scoreboard players set @s ck.bee_timer 0

# Clean up enforcement side effects
effect clear @s minecraft:hunger
effect clear @s minecraft:poison
effect clear @s minecraft:nausea
attribute @s minecraft:max_health base set 20
attribute @s minecraft:movement_speed base set 0.1

# Reset enforcement timers
scoreboard players set @s ck.soul_timer 0
scoreboard players set @s ck.xp_level 0
scoreboard players set @s ck.nether_timer 0
scoreboard players set @s ck.vamp_timer 0

# Check if this was tier 3 — season complete, no cooldown needed
execute if score @s ck.tier matches 3 run function curse_keeper:cleanse/season_complete
execute if score @s ck.tier matches 3 run return 0

# Increment tier and update tier tags
execute if score @s ck.tier matches 2 run tag @s remove ck.tier2
execute if score @s ck.tier matches 2 run tag @s add ck.tier3
execute if score @s ck.tier matches 2 run scoreboard players set @s ck.tier 3

execute if score @s ck.tier matches 1 run tag @s remove ck.tier1
execute if score @s ck.tier matches 1 run tag @s add ck.tier2
execute if score @s ck.tier matches 1 run scoreboard players set @s ck.tier 2

# Start cooldown
function curse_keeper:util/start_cooldown