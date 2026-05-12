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

# --- Global defaults (fake player "#ck" stores global vars) ---
# Only set if they haven't been set yet (first load)
# We check by seeing if system_on is 0; if the score doesn't exist
# it returns as 0, so this is safe on first load.
execute if score #ck ck.system_on matches 0 run scoreboard players set #ck ck.system_on 0
execute if score #ck ck.dev_mode matches 0 run scoreboard players set #ck ck.dev_mode 0

# --- Version broadcast ---
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"Curse Keeper","color":"dark_purple","bold":true},{"text":"]","color":"dark_gray"}," ",{"text":"v1.0 loaded. ","color":"gray"},{"text":"System: ","color":"gray"},{"score":{"name":"#ck","objective":"ck.system_on"},"color":"yellow"},{"text":" | Dev mode: ","color":"gray"},{"score":{"name":"#ck","objective":"ck.dev_mode"},"color":"yellow"}]

# --- Debug log (visible in server console / logs) ---
say [CK DEBUG] Curse Keeper load function ran successfully.

# --- Data storage defaults (only set on first load) ---
# These hold human-readable strings for the admin panel display
execute unless data storage curse_keeper:settings admin.system_on run data modify storage curse_keeper:settings admin.system_on set value "Disabled"
execute unless data storage curse_keeper:settings admin.dev_mode run data modify storage curse_keeper:settings admin.dev_mode set value "Disabled"