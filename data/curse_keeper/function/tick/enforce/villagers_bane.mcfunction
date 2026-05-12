# ============================================================
# curse_keeper:tick/enforce/villagers_bane
# Applies Poison and Nausea when a cursed player is within 5 blocks of a villager.
# Runs every tick via router.
# ============================================================

execute as @a[tag=ck.curse_8] at @s if entity @e[type=minecraft:villager,distance=..5] run effect give @s minecraft:poison 3 0 false
execute as @a[tag=ck.curse_8] at @s if entity @e[type=minecraft:villager,distance=..5] run effect give @s minecraft:nausea 3 0 false
execute as @a[tag=ck.curse_8] at @s if entity @e[type=minecraft:villager,distance=..5] run title @s actionbar {"text":"✦ Villager's Bane ✦","color":"dark_green","bold":true}