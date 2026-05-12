# ============================================================
# curse_keeper:tick/enforce/bee_marked_anger
# Runs at the cursed player's position.
# Targets each nearby bee and sets its anger timer.
# ============================================================

execute as @e[type=minecraft:bee,distance=..16] run data merge entity @s {AngerTime:400,HasStung:0b}