# ============================================================
# curse_keeper:tick/enforce/landlocked
# Deals damage every 40 ticks when the player is submerged in water.
# Runs every tick via router.
# ============================================================

# Increment timer
execute as @a[tag=ck.curse_14] run scoreboard players add @s ck.water_timer 1

# Reset timer when not in water
execute as @a[tag=ck.curse_14] at @s unless block ~ ~1 ~ minecraft:water run scoreboard players set @s ck.water_timer 0

# Every 40 ticks while submerged deal 2 HP damage and show actionbar
execute as @a[tag=ck.curse_14, scores={ck.water_timer=40..}] at @s if block ~ ~1 ~ minecraft:water run damage @s 2 minecraft:generic
execute as @a[tag=ck.curse_14, scores={ck.water_timer=40..}] at @s if block ~ ~1 ~ minecraft:water run title @s actionbar {"text":"✦ Landlocked — Your eyes aren't waterproof ✦","color":"aqua","bold":true}
execute as @a[tag=ck.curse_14, scores={ck.water_timer=40..}] at @s if block ~ ~1 ~ minecraft:water run scoreboard players set @s ck.water_timer 0