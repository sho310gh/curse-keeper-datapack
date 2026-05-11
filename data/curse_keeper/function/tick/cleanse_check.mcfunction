# ============================================================
# curse_keeper:tick/cleanse_check
# Checks kill count thresholds for kill-based cleanses.
# Runs every tick via router.
# ============================================================

# Bone Debt — 150 skeletons
execute as @a[tag=ck.curse_1, scores={ck.kill_skele=150..}] run function curse_keeper:cleanse/bone_debt

# Ender Blockade — 10 ravagers
execute as @a[tag=ck.curse_5, scores={ck.kill_ravager=10..}] run function curse_keeper:cleanse/ender_blockade

# Sluggish — 50,000 blocks walked
execute as @a[tag=ck.curse_6, scores={ck.walk_dist=50000..}] run function curse_keeper:cleanse/sluggish