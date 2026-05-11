# ============================================================
# curse_keeper:tick/enforce/bloodless
# Prevents natural regen by capping food level at 17.
# Natural regen requires food >= 18, so this blocks it entirely.
# Potions and golden apples still work — correct behavior.
# Uses /data to read food level and clamp it.
# ============================================================

# If food level is 18 or above, set it to 17 to block regen trigger
execute as @a[tag=ck.curse_4] store result score @s ck.nether_timer run data get entity @s foodLevel
execute as @a[tag=ck.curse_4, scores={ck.nether_timer=18..}] run data merge entity @s {foodLevel:17}
execute as @a[tag=ck.curse_4] run effect give @s minecraft:hunger 3 0 false