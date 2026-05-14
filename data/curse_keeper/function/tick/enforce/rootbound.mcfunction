# ============================================================
# curse_keeper:tick/enforce/rootbound
# Checks grass blocks broken every tick.
# Every 10 breaks applies Slowness II for 5 seconds.
# Uses modulo pattern with ck.const objective.
# Runs every tick via router.
# ============================================================

# Copy current grass broken score into scratch for modulo
execute as @a[tag=ck.curse_12] run scoreboard players operation @s ck.rootbound_mod = @s ck.grass_broken
execute as @a[tag=ck.curse_12] run scoreboard players operation @s ck.rootbound_mod %= #10 ck.const

# Apply Slowness II for 5 seconds when modulo hits 0 and player has broken at least 1 block
execute as @a[tag=ck.curse_12, scores={ck.rootbound_mod=0, ck.grass_broken=1..}] run effect give @s minecraft:slowness 10 1 false
execute as @a[tag=ck.curse_12, scores={ck.rootbound_mod=0, ck.grass_broken=1..}] run title @s actionbar {"text":"✦ Rootbound ✦","color":"dark_green","bold":true}