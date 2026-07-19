# ============================================================
# curse_keeper:tick/enforce/echo_marked_nightcheck
# Runs as the cursed player at nightfall.
# Checks if this is a spawn night (odd night count).
# ============================================================

# Only trigger during actual night time
execute unless score @s ck.night_count matches 1.. run return 0

# Check if it's night time
execute store result score #time ck.night_count run time query minecraft:day
execute if score #time ck.night_count matches 12600..23000 run function curse_keeper:tick/enforce/echo_marked_spawn