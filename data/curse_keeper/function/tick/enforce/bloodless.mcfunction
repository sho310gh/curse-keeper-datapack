# ============================================================
# curse_keeper:tick/enforce/bloodless
# Uses ck.prev_health as a tick counter to reapply hunger
# every 200 ticks (10 seconds) without constant reapplication.
# ============================================================

# Cap food level at 17
execute as @a[tag=ck.curse_4] store result score @s ck.prev_health run data get entity @s foodLevel
execute as @a[tag=ck.curse_4, scores={ck.prev_health=18..}] run data merge entity @s {foodLevel:17}

# Increment counter
scoreboard players add @a[tag=ck.curse_4] ck.nether_timer 1

# Apply hunger indefinitely, reapply every tick to keep it permanent
# 1000000 seconds is effectively infinite, true = hide particles
execute as @a[tag=ck.curse_4] run effect give @s minecraft:hunger 1000000 1 true