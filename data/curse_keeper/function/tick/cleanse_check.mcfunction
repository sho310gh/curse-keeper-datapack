# ============================================================
# curse_keeper:tick/cleanse_check
# Checks kill count thresholds for kill-based cleanses.
# Runs every tick via router.
# ============================================================

# Bone Debt — 150 skeletons
execute as @a[tag=ck.curse_1, scores={ck.kill_skele=150..}] run function curse_keeper:cleanse/bone_debt

# Ender Blockade — 10 ravagers
execute as @a[tag=ck.curse_5, scores={ck.kill_ravager=10..}] run function curse_keeper:cleanse/ender_blockade

# Frail Vessel — full netherite armor advancement
execute as @a[tag=ck.curse_2] if entity @s[advancements={minecraft:nether/netherite_armor=true}] run function curse_keeper:cleanse/frail_vessel

# Nether Sickness — check if player has the vanilla fortress advancement
execute as @a[tag=ck.curse_3] if entity @s[advancements={minecraft:nether/find_fortress=true}] run function curse_keeper:cleanse/nether_sickness

# Bloodless — how did we get here advancement
execute as @a[tag=ck.curse_4] if entity @s[advancements={minecraft:nether/all_effects=true}] run function curse_keeper:cleanse/bloodless

# Sluggish — 50,000 blocks walked
execute as @a[tag=ck.curse_6, scores={ck.walk_dist=5000000..}] run function curse_keeper:cleanse/sluggish

# Soul Drain — reach level 50
execute as @a[tag=ck.curse_7, tag=!ck.soul_cleansing] store result score @s ck.xp_level run xp query @s levels
execute as @a[tag=ck.curse_7, tag=!ck.soul_cleansing, scores={ck.xp_level=50..}] run tag @s add ck.soul_cleansing
execute as @a[tag=ck.soul_cleansing] run function curse_keeper:cleanse/soul_drain

# Villager's Bane — 10 iron golems killed
execute as @a[tag=ck.curse_8, scores={ck.kill_iron_golem=10..}] run function curse_keeper:cleanse/villagers_bane

# Bee Marked — 100 honey bottles consumed
execute as @a[tag=ck.curse_9, scores={ck.drink_honey=100..}] run function curse_keeper:cleanse/bee_marked

# Vampirism — 50 phantoms killed AND 20 milk buckets consumed
execute as @a[tag=ck.curse_10, scores={ck.kill_phantom=50.., ck.drink_milk=20..}] run function curse_keeper:cleanse/vampirism