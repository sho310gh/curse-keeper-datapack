# ============================================================
# curse_keeper:tick/enforce/bee_marked
# Deals 0 damage to nearby bees using the cursed player as the source,
# triggering natural aggro toward that player.
# Only runs every 5 seconds to avoid spam.
# ============================================================

# Increment timer
execute as @a[tag=ck.curse_9] run scoreboard players add @s ck.bee_timer 1

# Every 100 ticks, run the anger function as the cursed player
execute as @a[tag=ck.curse_9, scores={ck.bee_timer=100..}] at @s run function curse_keeper:tick/enforce/bee_marked_anger
execute as @a[tag=ck.curse_9, scores={ck.bee_timer=100..}] run scoreboard players set @s ck.bee_timer 0