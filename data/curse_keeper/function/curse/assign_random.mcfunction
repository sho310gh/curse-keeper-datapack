# ============================================================
# curse_keeper:curse/assign_random
# Runs as the player being cursed (@s).
# Determines their current tier, rolls a random curse
# from that tier's pool, then calls the assign function.
# ============================================================

# Set tier to 1 if they have no tier yet
execute unless entity @s[tag=ck.tier1] unless entity @s[tag=ck.tier2] unless entity @s[tag=ck.tier3] run tag @s add ck.tier1
execute unless entity @s[tag=ck.tier1] unless entity @s[tag=ck.tier2] unless entity @s[tag=ck.tier3] run scoreboard players set @s ck.tier 1

# Roll a random number into ck.curse_id using loot table random
# We use the random command introduced in 1.20.2

# Tier 1 pool
execute if entity @s[tag=ck.tier1] run function curse_keeper:curse/roll_tier1

# Tier 2 pool
execute if entity @s[tag=ck.tier2] run scoreboard players set @s ck.curse_id 2
execute if entity @s[tag=ck.tier2] run function curse_keeper:curse/roll_tier2

# Tier 3 pool
execute if entity @s[tag=ck.tier3] run scoreboard players set @s ck.curse_id 4
execute if entity @s[tag=ck.tier3] run function curse_keeper:curse/roll_tier3

# Now apply whichever curse was selected
execute if score @s ck.curse_id matches 1 run function curse_keeper:curse/assign/bone_debt
execute if score @s ck.curse_id matches 2 run function curse_keeper:curse/assign/frail_vessel
execute if score @s ck.curse_id matches 3 run function curse_keeper:curse/assign/nether_sickness
execute if score @s ck.curse_id matches 4 run function curse_keeper:curse/assign/bloodless
execute if score @s ck.curse_id matches 5 run function curse_keeper:curse/assign/ender_blockade
execute if score @s ck.curse_id matches 6 run function curse_keeper:curse/assign/sluggish
execute if score @s ck.curse_id matches 7 run function curse_keeper:curse/assign/soul_drain
execute if score @s ck.curse_id matches 8 run function curse_keeper:curse/assign/villagers_bane
execute if score @s ck.curse_id matches 9 run function curse_keeper:curse/assign/bee_marked
execute if score @s ck.curse_id matches 10 run function curse_keeper:curse/assign/vampirism