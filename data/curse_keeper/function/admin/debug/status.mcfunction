# ============================================================
# curse_keeper:admin/debug/status
# Shows all Curse Keeper scores and tags for @s (the caller).
# Safe for any op to run. Useful during all phases of testing.
# Usage: /function curse_keeper:admin/debug/status
# ============================================================

tellraw @s ["",{"text":"--- ","color":"dark_gray"},{"text":"CK DEBUG STATUS","color":"dark_purple","bold":true},{"text":" ---","color":"dark_gray"}]

# --- Global state (stored on fake player #ck) ---
tellraw @s ["",{"text":"[GLOBAL] ","color":"gold"},{"text":"System on: ","color":"gray"},{"score":{"name":"#ck","objective":"ck.system_on"},"color":"yellow"},{"text":"  Dev mode: ","color":"gray"},{"score":{"name":"#ck","objective":"ck.dev_mode"},"color":"yellow"}]

# --- Personal scores ---
tellraw @s ["",{"text":"[SCORES] ","color":"aqua"},{"text":"curse_id: ","color":"gray"},{"score":{"name":"@s","objective":"ck.curse_id"},"color":"white"},{"text":"  tier: ","color":"gray"},{"score":{"name":"@s","objective":"ck.tier"},"color":"white"},{"text":"  season_free: ","color":"gray"},{"score":{"name":"@s","objective":"ck.season_free"},"color":"white"}]
tellraw @s ["",{"text":"[SCORES] ","color":"aqua"},{"text":"cooldown: ","color":"gray"},{"score":{"name":"@s","objective":"ck.cooldown"},"color":"white"},{"text":"  nether_timer: ","color":"gray"},{"score":{"name":"@s","objective":"ck.nether_timer"},"color":"white"},{"text":"  prev_health: ","color":"gray"},{"score":{"name":"@s","objective":"ck.prev_health"},"color":"white"}]
tellraw @s ["",{"text":"[SCORES] ","color":"aqua"},{"text":"kill_skele: ","color":"gray"},{"score":{"name":"@s","objective":"ck.kill_skele"},"color":"white"}]

# --- Tags ---
# Check each tag individually and report present/absent
tellraw @s [{"text":"[TAGS]  ","color":"green"},{"text":"ck.cursed: ","color":"gray"},{"selector":"@s[tag=ck.cursed]","color":"green"},{"text":"ck.on_cooldown: ","color":"gray"},{"selector":"@s[tag=ck.on_cooldown]","color":"yellow"},{"text":"ck.season_free: ","color":"gray"},{"selector":"@s[tag=ck.season_free]","color":"light_purple"}]
tellraw @s [{"text":"[TAGS]  ","color":"green"},{"text":"Tier tags: ","color":"gray"},{"selector":"@s[tag=ck.tier1]","color":"white"},{"text":" ","color":"white"},{"selector":"@s[tag=ck.tier2]","color":"white"},{"text":" ","color":"white"},{"selector":"@s[tag=ck.tier3]","color":"white"}]
tellraw @s [{"text":"[TAGS]  ","color":"green"},{"text":"Curse tags: ","color":"gray"},{"selector":"@s[tag=ck.curse_1]","color":"red"},{"text":" ","color":"white"},{"selector":"@s[tag=ck.curse_2]","color":"red"},{"text":" ","color":"white"},{"selector":"@s[tag=ck.curse_3]","color":"red"},{"text":" ","color":"white"},{"selector":"@s[tag=ck.curse_4]","color":"red"},{"text":" ","color":"white"},{"selector":"@s[tag=ck.curse_5]","color":"red"}]

tellraw @s ["",{"text":"--- ","color":"dark_gray"},{"text":"End of Status","color":"dark_gray"},{"text":" ---","color":"dark_gray"}]
