# ============================================================
# curse_keeper:admin/reset_all
# Resets ALL players — removes curses, tags, and scores.
# Called from the admin panel.
# ============================================================

# Restore attributes that curses modify
execute as @a[tag=ck.curse_1] run attribute @s minecraft:max_health base set 20
execute as @a[tag=ck.curse_2] run attribute @s minecraft:max_health base set 20
execute as @a[tag=ck.curse_6] run attribute @s minecraft:movement_speed base set 0.1
execute as @a[tag=ck.curse_13] run attribute @s minecraft:max_health base set 20
execute as @a[tag=ck.curse_16] run attribute @s minecraft:max_health base set 20

# Remove all curse tags from everyone
tag @a remove ck.cursed
tag @a remove ck.on_cooldown
tag @a remove ck.season_free
tag @a remove ck.tier1
tag @a remove ck.tier2
tag @a remove ck.tier3
tag @a remove ck.curse_1
tag @a remove ck.curse_2
tag @a remove ck.curse_3
tag @a remove ck.curse_4
tag @a remove ck.curse_5
tag @a remove ck.curse_6
tag @a remove ck.curse_7
tag @a remove ck.curse_8
tag @a remove ck.curse_9
tag @a remove ck.curse_10
tag @a remove ck.curse_11
tag @a remove ck.curse_12
tag @a remove ck.curse_13
tag @a remove ck.curse_14
tag @a remove ck.curse_15
tag @a remove ck.curse_16
tag @a remove ck.curse_ready
tag @a remove ck.in_countdown
tag @a remove ck.soul_cleansing
tag @a remove ck.aggro_spider
tag @a remove ck.grave_sleeping
tag @a remove ck.debt_dying
tag @e[type=minecraft:spider] remove ck.angered_spider

# Reset all curse scores for everyone
scoreboard players reset @a ck.curse_id
scoreboard players reset @a ck.tier
scoreboard players reset @a ck.cooldown
scoreboard players reset @a ck.nether_timer
scoreboard players reset @a ck.prev_health
scoreboard players reset @a ck.season_free
scoreboard players reset @a ck.kill_skele
scoreboard players reset @a ck.walk_dist
scoreboard players reset @a ck.kill_iron_golem
scoreboard players reset @a ck.drink_honey
scoreboard players reset @a ck.kill_phantom
scoreboard players reset @a ck.drink_milk
scoreboard players reset @a ck.vamp_timer
scoreboard players reset @a ck.kill_ravager
scoreboard players reset @a ck.soul_timer
scoreboard players reset @a ck.xp_level
scoreboard players reset @a ck.bee_timer
scoreboard players reset @a ck.kill_spider
scoreboard players reset @a ck.spider_timer
scoreboard players reset @a ck.kill_creeper
scoreboard players reset @a ck.grass_broken
scoreboard players reset @a ck.rootbound_mod
scoreboard players reset @a ck.grave_hearts
scoreboard players reset @a ck.grave_slept
scoreboard players reset @a ck.kill_wither
scoreboard players reset @a ck.water_timer
scoreboard players reset @a ck.kill_elder_guardian
scoreboard players reset @a ck.moon_timer
scoreboard players reset @a ck.debt_hearts
scoreboard players reset @a ck.kill_ender_dragon
scoreboard players reset @a ck.kill_player
scoreboard players reset @a ck.death_processed

# Clear all active effects
effect clear @a minecraft:darkness
effect clear @a minecraft:poison
effect clear @a minecraft:nausea
effect clear @a minecraft:hunger

# Broadcast to all players
tellraw @a [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"All curses have been reset by an admin.","color":"gray"}]