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
execute as @a run attribute @s minecraft:movement_speed modifier remove curse_keeper:heavy_plate_speed

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
tag @a remove ck.curse_17
tag @a remove ck.curse_18
tag @a remove ck.curse_19
tag @a remove ck.curse_20
tag @a remove ck.curse_ready
tag @a remove ck.in_countdown
tag @a remove ck.soul_cleansing
tag @a remove ck.aggro_spider
tag @a remove ck.grave_sleeping
tag @a remove ck.debt_dying
tag @a remove ck.night_triggered
tag @e[type=minecraft:spider] remove ck.angered_spider
tag @e[type=minecraft:warden,tag=ck.curse_warden] remove ck.curse_warden

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
scoreboard players reset @a ck.use_honeycomb
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
scoreboard players reset @a ck.spawn_night
scoreboard players reset @a ck.curse_warden_kills
scoreboard players reset @a ck.daytime
scoreboard players reset @a ck.armor_count
scoreboard players reset @a ck.hp_kill_skele
scoreboard players reset @a ck.hp_kill_zombie

# Picky Eater Scoreboard
scoreboard players reset @a ck.picky_apple
scoreboard players reset @a ck.picky_baked_potato
scoreboard players reset @a ck.picky_beetroot
scoreboard players reset @a ck.picky_beetroot_soup
scoreboard players reset @a ck.picky_bread
scoreboard players reset @a ck.picky_carrot
scoreboard players reset @a ck.picky_chorus_fruit
scoreboard players reset @a ck.picky_cooked_chicken
scoreboard players reset @a ck.picky_cooked_cod
scoreboard players reset @a ck.picky_cooked_mutton
scoreboard players reset @a ck.picky_cooked_porkchop
scoreboard players reset @a ck.picky_cooked_rabbit
scoreboard players reset @a ck.picky_cooked_salmon
scoreboard players reset @a ck.picky_cookie
scoreboard players reset @a ck.picky_dried_kelp
scoreboard players reset @a ck.picky_enchanted_golden_apple
scoreboard players reset @a ck.picky_golden_apple
scoreboard players reset @a ck.picky_golden_carrot
scoreboard players reset @a ck.picky_honey_bottle
scoreboard players reset @a ck.picky_melon_slice
scoreboard players reset @a ck.picky_mushroom_stew
scoreboard players reset @a ck.picky_poisonous_potato
scoreboard players reset @a ck.picky_potato
scoreboard players reset @a ck.picky_pumpkin_pie
scoreboard players reset @a ck.picky_rabbit_stew
scoreboard players reset @a ck.picky_beef
scoreboard players reset @a ck.picky_chicken
scoreboard players reset @a ck.picky_cod
scoreboard players reset @a ck.picky_mutton
scoreboard players reset @a ck.picky_porkchop
scoreboard players reset @a ck.picky_rabbit
scoreboard players reset @a ck.picky_salmon
scoreboard players reset @a ck.picky_rotten_flesh
scoreboard players reset @a ck.picky_spider_eye
scoreboard players reset @a ck.picky_cooked_beef
scoreboard players reset @a ck.picky_suspicious_stew
scoreboard players reset @a ck.picky_tropical_fish
scoreboard players reset @a ck.picky_pufferfish
scoreboard players reset @a ck.picky_cake
scoreboard players reset @a ck.picky_cake_last
scoreboard players reset @a ck.cake_slices

# Clear all active effects
effect clear @a minecraft:darkness
effect clear @a minecraft:poison
effect clear @a minecraft:nausea
effect clear @a minecraft:hunger

kill @e[type=minecraft:warden,tag=ck.curse_warden]

execute as @a run function curse_keeper:admin/revoke_picky_eater

# Broadcast to all players
tellraw @a [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"All curses have been reset by an admin.","color":"gray"}]