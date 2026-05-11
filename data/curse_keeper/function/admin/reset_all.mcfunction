# ============================================================
# curse_keeper:admin/reset_all
# Resets ALL players — removes curses, tags, and scores.
# Called from the admin panel.
# ============================================================

execute as @a[tag=ck.curse_1] run attribute @s minecraft:max_health base set 20

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
tag @a remove ck.curse_ready
tag @a remove ck.in_countdown

# Reset all curse scores for everyone
scoreboard players reset @a ck.curse_id
scoreboard players reset @a ck.tier
scoreboard players reset @a ck.cooldown
scoreboard players reset @a ck.nether_timer
scoreboard players reset @a ck.prev_health
scoreboard players reset @a ck.season_free
scoreboard players reset @a ck.kill_skele

# Remove darkness effect
effect clear @a minecraft:darkness

# Broadcast to all players
tellraw @a [{"text":"[Curse Keeper] ","color":"dark_purple","bold":true},{"text":"All curses have been reset by an admin.","color":"gray"}]