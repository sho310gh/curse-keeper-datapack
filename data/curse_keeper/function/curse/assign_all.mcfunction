# ============================================================
# curse_keeper:curse/assign_all
# Assigns a random curse to all eligible online players.
# Skips players who are already cursed or season-free.
# ============================================================

execute as @a[tag=!ck.cursed, tag=!ck.season_free] run function curse_keeper:curse/assign_random