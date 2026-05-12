# ============================================================
# curse_keeper:tick/enforce/villagers_bane
# Applies Poison and Nausea when a cursed player is within 5 blocks of a villager.
# Only applies if the effect is not already active, so it runs its full duration.
# Runs every tick via router.
# ============================================================

execute as @a[tag=ck.curse_8] at @s if entity @e[type=minecraft:villager,distance=..10] unless entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run effect give @s minecraft:poison 10 0 false
execute as @a[tag=ck.curse_8] at @s if entity @e[type=minecraft:villager,distance=..10] unless entity @s[nbt={active_effects:[{id:"minecraft:nausea"}]}] run effect give @s minecraft:nausea 10 0 false
execute as @a[tag=ck.curse_8] at @s if entity @e[type=minecraft:villager,distance=..10] run title @s actionbar {"text":"✦ Villager's Bane ✦","color":"dark_green","bold":true}