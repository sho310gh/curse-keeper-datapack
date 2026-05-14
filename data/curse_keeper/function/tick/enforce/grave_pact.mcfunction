# ============================================================
# curse_keeper:tick/enforce/grave_pact
# Detects sleep via SleepTimer NBT and removes 1 max heart on waking.
# Resets max hearts to full on death.
# Stops reducing below 2 HP (1 heart).
# Runs every tick via router.
# ============================================================

# Detect player falling asleep (SleepTimer hits 100)
execute as @a[tag=ck.curse_13, tag=!ck.grave_sleeping] at @s if entity @s[nbt={SleepTimer:99s}] run tag @s add ck.grave_sleeping

# Detect player waking up — was sleeping, now SleepTimer is 0
execute as @a[tag=ck.curse_13, tag=ck.grave_sleeping] at @s unless entity @s[nbt={SleepTimer:99s}] run function curse_keeper:tick/enforce/grave_pact_wake

# Detect death — health at 0, reset max hearts
execute as @a[tag=ck.curse_13, scores={ck.death_processed=0}] at @s if entity @s[nbt={Health:0.0f}] run function curse_keeper:tick/enforce/grave_pact_death