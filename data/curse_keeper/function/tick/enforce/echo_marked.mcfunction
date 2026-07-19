# ============================================================
# curse_keeper:tick/enforce/echo_marked
# Uses ck.daytime to detect nightfall.
# Uses ck.spawn_night to track alternate nights (0=skip, 1=spawn).
# ============================================================

# Store time of day for echo marked players
execute as @a[tag=ck.curse_17] store result score @s ck.daytime run time query minecraft:day

# Detect nightfall window (12600-12620 ticks) — fires once per night
execute as @a[tag=ck.curse_17, tag=!ck.night_triggered, scores={ck.daytime=12600..12620}] run function curse_keeper:tick/enforce/echo_marked_night

# Reset trigger at dawn (500-1500 ticks)
execute as @a[tag=ck.curse_17, tag=ck.night_triggered, scores={ck.daytime=500..1500}] run tag @s remove ck.night_triggered