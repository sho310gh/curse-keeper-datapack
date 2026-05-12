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

# Soul Drain — reach level 50
execute as @a[tag=ck.curse_7, tag=!ck.soul_cleansing] store result score @s ck.xp_level run xp query @s levels
execute as @a[tag=ck.curse_7, tag=!ck.soul_cleansing, scores={ck.xp_level=50..}] run tag @s add ck.soul_cleansing
execute as @a[tag=ck.soul_cleansing] run function curse_keeper:cleanse/soul_drain

# Bee Marked — 100 honey bottles consumed
execute as @a[tag=ck.curse_9, scores={ck.drink_honey=100..}] run function curse_keeper:cleanse/bee_marked

# Vampirism — 50 phantoms killed AND 20 milk buckets consumed
execute as @a[tag=ck.curse_10, scores={ck.kill_phantom=50.., ck.drink_milk=20..}] run function curse_keeper:cleanse/vampirism