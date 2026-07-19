# ============================================================
# curse_keeper:setup/load
# Runs once on world load or /reload
# Creates all scoreboards, sets default global vars,
# and broadcasts the pack version to all online players.
# ============================================================

scoreboard objectives add ck.curse_id dummy
scoreboard objectives add ck.tier dummy
scoreboard objectives add ck.cooldown dummy
scoreboard objectives add ck.nether_timer dummy
scoreboard objectives add ck.season_free dummy
scoreboard objectives add ck.prev_health dummy
scoreboard objectives add ck.kill_skele minecraft.killed:minecraft.skeleton
scoreboard objectives add ck.dev_mode dummy
scoreboard objectives add ck.system_on dummy
scoreboard objectives add ck.admin trigger
scoreboard objectives add ck.showcurse trigger
scoreboard objectives add ck.kill_ravager minecraft.killed:minecraft.ravager
scoreboard objectives add ck.walk_dist minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add ck.kill_iron_golem minecraft.killed:minecraft.iron_golem
scoreboard objectives add ck.drink_honey minecraft.used:minecraft.honey_bottle
scoreboard objectives add ck.use_honeycomb minecraft.used:minecraft.honeycomb
scoreboard objectives add ck.kill_phantom minecraft.killed:minecraft.phantom
scoreboard objectives add ck.drink_milk minecraft.used:minecraft.milk_bucket
scoreboard objectives add ck.vamp_timer dummy
scoreboard objectives add ck.soul_timer dummy
scoreboard objectives add ck.xp_level dummy
scoreboard objectives add ck.bee_timer dummy
scoreboard objectives add ck.day_check dummy
scoreboard objectives add ck.kill_spider minecraft.killed:minecraft.spider
scoreboard objectives add ck.spider_timer dummy
scoreboard objectives add ck.kill_creeper minecraft.killed:minecraft.creeper
scoreboard objectives add ck.grass_broken minecraft.mined:minecraft.grass_block
scoreboard objectives add ck.rootbound_mod dummy
scoreboard objectives add ck.const dummy
scoreboard objectives add ck.grave_hearts dummy
scoreboard objectives add ck.grave_hearts_display dummy
scoreboard objectives add ck.grave_slept dummy
scoreboard objectives add ck.kill_wither minecraft.killed:minecraft.wither
scoreboard objectives add ck.water_timer dummy
scoreboard objectives add ck.kill_elder_guardian minecraft.killed:minecraft.elder_guardian
scoreboard objectives add ck.moon_timer dummy
scoreboard objectives add ck.debt_hearts dummy
scoreboard objectives add ck.kill_ender_dragon minecraft.killed:minecraft.ender_dragon
scoreboard objectives add ck.kill_player minecraft.killed:minecraft.player
scoreboard objectives add ck.death_processed dummy
scoreboard objectives add time_since_death minecraft.custom:minecraft.time_since_death
scoreboard objectives add ck.kill_warden minecraft.killed:minecraft.warden
scoreboard objectives add ck.curse_warden_kills dummy
scoreboard objectives add ck.night_count dummy
scoreboard objectives add ck.daytime dummy
scoreboard objectives add ck.spawn_night dummy
scoreboard objectives add ck.near_heat1 dummy
scoreboard objectives add ck.near_heat2 dummy
scoreboard objectives add ck.near_heat3 dummy
scoreboard objectives add ck.near_heat4 dummy
scoreboard objectives add ck.hp_kill_skele minecraft.killed:minecraft.skeleton
scoreboard objectives add ck.hp_kill_zombie minecraft.killed:minecraft.zombie
scoreboard objectives add ck.armor_count dummy
scoreboard objectives add ck.temp dummy

# Picky Eater counters (39 foods + cake)
scoreboard objectives add ck.picky_apple dummy
scoreboard objectives add ck.picky_baked_potato dummy
scoreboard objectives add ck.picky_beetroot dummy
scoreboard objectives add ck.picky_beetroot_soup dummy
scoreboard objectives add ck.picky_bread dummy
scoreboard objectives add ck.picky_carrot dummy
scoreboard objectives add ck.picky_chorus_fruit dummy
scoreboard objectives add ck.picky_cooked_chicken dummy
scoreboard objectives add ck.picky_cooked_cod dummy
scoreboard objectives add ck.picky_cooked_mutton dummy
scoreboard objectives add ck.picky_cooked_porkchop dummy
scoreboard objectives add ck.picky_cooked_rabbit dummy
scoreboard objectives add ck.picky_cooked_salmon dummy
scoreboard objectives add ck.picky_cookie dummy
scoreboard objectives add ck.picky_dried_kelp dummy
scoreboard objectives add ck.picky_enchanted_golden_apple dummy
scoreboard objectives add ck.picky_golden_apple dummy
scoreboard objectives add ck.picky_golden_carrot dummy
scoreboard objectives add ck.picky_honey_bottle dummy
scoreboard objectives add ck.picky_melon_slice dummy
scoreboard objectives add ck.picky_mushroom_stew dummy
scoreboard objectives add ck.picky_poisonous_potato dummy
scoreboard objectives add ck.picky_potato dummy
scoreboard objectives add ck.picky_pumpkin_pie dummy
scoreboard objectives add ck.picky_rabbit_stew dummy
scoreboard objectives add ck.picky_beef dummy
scoreboard objectives add ck.picky_chicken dummy
scoreboard objectives add ck.picky_cod dummy
scoreboard objectives add ck.picky_mutton dummy
scoreboard objectives add ck.picky_porkchop dummy
scoreboard objectives add ck.picky_rabbit dummy
scoreboard objectives add ck.picky_salmon dummy
scoreboard objectives add ck.picky_rotten_flesh dummy
scoreboard objectives add ck.picky_spider_eye dummy
scoreboard objectives add ck.picky_cooked_beef dummy
scoreboard objectives add ck.picky_suspicious_stew dummy
scoreboard objectives add ck.picky_tropical_fish dummy
scoreboard objectives add ck.picky_pufferfish dummy
scoreboard objectives add ck.picky_cake dummy
scoreboard objectives add ck.picky_cake_last dummy
scoreboard objectives add ck.cake_slices minecraft.custom:minecraft.eat_cake_slice

scoreboard players set #10 ck.const 10
scoreboard players set #2 ck.const 2

# --- Global defaults (fake player "#ck" stores global vars) ---
# Only set if they haven't been set yet (first load)
# We check by seeing if system_on is 0; if the score doesn't exist
# it returns as 0, so this is safe on first load.
execute if score #ck ck.system_on matches 0 run scoreboard players set #ck ck.system_on 0
execute if score #ck ck.dev_mode matches 0 run scoreboard players set #ck ck.dev_mode 0

# --- Version broadcast ---
tellraw @a [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"System: ","color":"gray"},{"storage":"curse_keeper:settings","nbt":"admin.system_on","color":"green"},{"text":" | Dev mode: ","color":"gray"},{"storage":"curse_keeper:settings","nbt":"admin.dev_mode","color":"green"}]

# --- Data storage defaults (only set on first load) ---
# These hold human-readable strings for the admin panel display
execute unless data storage curse_keeper:settings admin.system_on run data modify storage curse_keeper:settings admin.system_on set value "Disabled"
execute unless data storage curse_keeper:settings admin.dev_mode run data modify storage curse_keeper:settings admin.dev_mode set value "Disabled"