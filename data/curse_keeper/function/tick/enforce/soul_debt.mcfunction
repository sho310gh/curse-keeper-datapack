# ============================================================
# curse_keeper:tick/enforce/soul_debt
# Detects player death and removes 1 max heart.
# Stops reducing at 2 HP (1 heart minimum).
# Runs every tick via router.
# ============================================================

# Store current max health into score every tick for death gate check
execute as @a[tag=ck.curse_16] store result score @s ck.debt_hearts run attribute @s minecraft:max_health base get

# Detect death — tag as dying to fire once
execute as @a[tag=ck.curse_16, tag=!ck.debt_dying] at @s if entity @s[nbt={Health:0.0f}] run tag @s add ck.debt_dying
execute as @a[tag=ck.curse_16, tag=ck.debt_dying] at @s unless entity @s[nbt={Health:0.0f}] run function curse_keeper:tick/enforce/soul_debt_death