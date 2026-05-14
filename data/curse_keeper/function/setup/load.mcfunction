# ============================================================
# curse_keeper:setup/load
# Runs once on world load or /reload
# Creates all scoreboards, sets default global vars,
# and broadcasts the pack version to all online players.
# ============================================================

# --- Scoreboards ---
# ck.curse_id   : Which curse a player has (1-5 in v1.0, 0 = none)
# ck.tier        : Current curse tier (1, 2, or 3)
# ck.cooldown    : Post-cleanse cooldown ticks (counts down to 0)
# ck.nether_timer: Ticks spent in Nether (used by Nether Sickness)
# ck.season_free : 1 = player has cleared all 3 tiers this season
# ck.prev_health : Stores previous tick health (used by Bloodless)
# ck.kill_skele  : Mirrors skeleton kill stat for Bone Debt tracking
# ck.dev_mode    : Global flag — 1 = dev mode, 0 = prod mode
# ck.system_on   : Global flag — 1 = curse system active, 0 = inactive
# ck.admin: Trigger scoreboard for /trigger ck.admin
# ck.walk_dist : Mirrors walk distance stat for Sluggish tracking (in cm, so 50,000 blocks = 5,000,000)
# ck.kill_iron_golem : Tracks iron golem kills for Villager's Bane cleanse
# ck.drink_honey : Tracks honey bottles consumed for Bee Marked cleanse
# ck.kill_phantom : Tracks phantom kills for Vampirism cleanse
# ck.drink_milk   : Tracks milk bucket consumption for Vampirism cleanse
# ck.vamp_timer   : Stores daytime query result for Vampirism day check
# ck.soul_timer : Tracks ticks for XP drain interval (Soul Drain enforcement)
# ck.xp_level   : Stores current XP level for Soul Drain drain check and cleanse check
# ck.kill_spider  : Tracks spider kills for Arachnophobia cleanse
# ck.spider_timer : Tracks ticks for spider spawn interval
# ck.kill_creeper  : Tracks creeper kills for Rootbound cleanse
# ck.grass_broken  : Tracks grass blocks broken for Rootbound enforcement
# ck.rootbound_mod : Scratch score for modulo operation
# ck.const         : Constant objective for modulo operations
# ck.grave_hearts  : Tracks current max health value for Grave Pact
# ck.grave_slept   : Tracks sleep count for Grave Pact
# ck.kill_wither   : Tracks Wither kills for Grave Pact cleanse
# ck.water_timer : Tracks ticks for water damage interval (Landlocked enforcement)
# ck.kill_elder_guardian : Tracks Elder Guardian kills for Moonbound cleanse
# ck.moon_timer          : Tracks ticks for fire interval (Moonbound enforcement)
# ck.debt_hearts      : Tracks current max health for Soul Debt enforcement
# ck.kill_ender_dragon: Tracks Ender Dragon kills for Soul Debt cleanse
# ck.kill_player      : Tracks player kills for Soul Debt cleanse

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