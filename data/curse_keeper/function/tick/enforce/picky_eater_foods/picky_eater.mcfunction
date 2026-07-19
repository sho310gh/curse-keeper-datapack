# ============================================================
# curse_keeper:tick/enforce/picky_eater
# Tracks cake slices eaten via stat comparison.
# ============================================================

# Store current cake slice count
execute as @a[tag=ck.curse_19] store result score @s ck.picky_cake run scoreboard players get @s ck.cake_slices

# Detect increase
execute as @a[tag=ck.curse_19] run scoreboard players operation @s ck.picky_cake -= @s ck.picky_cake_last

# If increased, increment the real counter and check penalty
execute as @a[tag=ck.curse_19, scores={ck.picky_cake=1..}] run function curse_keeper:tick/enforce/picky_eater_cake

# Update last known value
execute as @a[tag=ck.curse_19] run scoreboard players operation @s ck.picky_cake_last = @s ck.cake_slices
