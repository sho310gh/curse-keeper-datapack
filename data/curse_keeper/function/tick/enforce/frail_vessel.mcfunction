# ============================================================
# curse_keeper:tick/enforce/frail_vessel
# Reduces max health to 4 hearts (8 HP) every tick.
# Also clamps current health to 8 if it somehow exceeds it.
# ============================================================

execute as @a[tag=ck.curse_2] run attribute @s minecraft:max_health base set 8
execute as @a[tag=ck.curse_2] run execute store result score @s ck.prev_health run data get entity @s Health 8
execute as @a[tag=ck.curse_2, scores={ck.prev_health=101..}] run data merge entity @s {Health:8.0f}