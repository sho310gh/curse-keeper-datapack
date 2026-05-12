# ============================================================
# curse_keeper:tick/enforce/famished
# Constantly drains saturation to 0 and applies hunger periodically.
# Runs every tick via router.
# ============================================================

# Drain saturation to 0 every tick
execute as @a[tag=ck.curse_7] run data merge entity @s {foodSaturationLevel:0.0f}

# Increment hunger timer
execute as @a[tag=ck.curse_7] run scoreboard players add @s ck.hunger_timer 1

# Apply hunger effect every 10 seconds (200 ticks) and reset timer
execute as @a[tag=ck.curse_7, scores={ck.hunger_timer=200..}] at @s run effect give @s minecraft:hunger 6 1 false
execute as @a[tag=ck.curse_7, scores={ck.hunger_timer=200..}] at @s run title @s actionbar {"text":"✦ Famished ✦","color":"gold","bold":true}
execute as @a[tag=ck.curse_7, scores={ck.hunger_timer=200..}] run scoreboard players set @s ck.hunger_timer 0