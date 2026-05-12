# ============================================================
# curse_keeper:tick/enforce/vampirism
# Sets player on fire when all conditions are met:
# - In the Overworld
# - Daytime (ticks 0..12000)
# - Exposed to sky (sky light level 15 at player head position)
# Fire is naturally extinguished by water.
# Runs every tick via router.
# ============================================================

# Store current daytime into a score for comparison
execute as @a[tag=ck.curse_10] store result score @s ck.vamp_timer run time query daytime

# Apply fire only when in overworld + daytime + sky exposed
execute as @a[tag=ck.curse_10, scores={ck.vamp_timer=0..12000}] at @s if entity @s[nbt={Dimension:"minecraft:overworld"}] if predicate curse_keeper:exposed_to_sky run data merge entity @s {Fire:40s}

# Actionbar warning when burning
execute as @a[tag=ck.curse_10, scores={ck.vamp_timer=0..12000}] at @s if entity @s[nbt={Dimension:"minecraft:overworld"}] if predicate curse_keeper:exposed_to_sky run title @s actionbar {"text":"✦ Vampirism — Sunlight burns you ✦","color":"red","bold":true}