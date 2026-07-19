# ============================================================
# curse_keeper:tick/enforce/picky_eater
# Tracks cake slices eaten via stat comparison.
# ============================================================

# If cake_slices increased since last tick, run penalty function
execute as @a[tag=ck.curse_19] if score @s ck.cake_slices > @s ck.picky_cake_last run function curse_keeper:tick/enforce/picky_eater_cake

# Update last known value
execute as @a[tag=ck.curse_19] run scoreboard players operation @s ck.picky_cake_last = @s ck.cake_slices