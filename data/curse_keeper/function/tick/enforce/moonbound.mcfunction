# ============================================================
# curse_keeper:tick/enforce/moonbound
# Places fire under the player when in overworld, nighttime, exposed to sky.
# Uses same pattern as Vampirism but inverted day check.
# Runs every tick via router.
# ============================================================

# Increment timer
execute as @a[tag=ck.curse_15] run scoreboard players add @s ck.moon_timer 1

# Every 40 ticks pass to burn helper
execute as @a[tag=ck.curse_15, scores={ck.moon_timer=40..}] at @s run function curse_keeper:tick/enforce/moonbound_burn