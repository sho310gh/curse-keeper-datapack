# ============================================================
# curse_keeper:curse/assign/heavy_plate
# Curse 20 — Heavy Plate (Tier 1)
# Restriction: Wearing iron/copper/gold/diamond/netherite
# armor reduces movement speed. 1 piece = 5%, 2 = 10%,
# 3 = 20%, 4 = 40%. Leather and chainmail are exempt.
# Cleanse: Kill 50 skeletons AND 50 zombies.
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier1
tag @s add ck.curse_20
scoreboard players set @s ck.curse_id 20
scoreboard players set @s ck.tier 1
scoreboard players set @s ck.armor_count 0

# Initialize kill counters
execute unless score @s ck.hp_kill_skele = @s ck.hp_kill_skele run scoreboard players set @s ck.hp_kill_skele 0
execute unless score @s ck.hp_kill_zombie = @s ck.hp_kill_zombie run scoreboard players set @s ck.hp_kill_zombie 0

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Heavy Plate","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"1 — Quirk","color":"yellow"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Wearing iron, copper, gold, diamond or netherite armor slows you down. 1 piece = 5%, 2 = 10%, 3 = 20%, 4 = 40% slower. Leather and chainmail are safe.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 50 skeletons and 50 zombies.","color":"green"}]