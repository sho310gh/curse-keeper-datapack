# ============================================================
# curse_keeper:admin/reset_all
# Resets ALL players — removes curses, tags, and scores.
# Called from the admin panel.
# ============================================================

# Restore attributes that curses modify
execute as @a[tag=ck.curse_1] run attribute @s minecraft:max_health base set 20
execute as @a[tag=ck.curse_2] run attribute @s minecraft:max_health base set 20
execute as @a[tag=ck.curse_6] run attribute @s minecraft:movement_speed base set 0.1

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
tag @a remove ck.curse_ready
tag @a remove ck.in_countdown
tag @a remove ck.soul_cleansing

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

# Clear all active effects
effect clear @a minecraft:darkness
effect clear @a minecraft:poison
effect clear @a minecraft:nausea
effect clear @a minecraft:hunger

# Broadcast to all players
tellraw @a [{"text":"[Curse Keeper] ","color":"dark_purple","bold":true},{"text":"All curses have been reset by an admin.","color":"gray"}]