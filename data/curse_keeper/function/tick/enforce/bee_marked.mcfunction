# ============================================================
# curse_keeper:tick/enforce/bee_marked
# Angers all bees within 16 blocks of a Bee Marked player.
# Runs every tick via router.
# ============================================================

# For each cursed player, find all bees within 16 blocks and anger them
execute as @a[tag=ck.curse_9] at @s run function curse_keeper:tick/enforce/bee_marked_anger