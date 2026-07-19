# ============================================================
# curse_keeper:curse/assign/campfire_cough
# Curse 18 — Campfire Cough (Tier 2)
# Restriction: Nausea when near active furnace, smoker, or campfire.
# Cleanse: Have 64 cooked cod in your inventory at once.
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier2
tag @s add ck.curse_18
scoreboard players set @s ck.curse_id 18
scoreboard players set @s ck.tier 2

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Campfire Cough","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"2 — Affliction","color":"dark_red"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Smoke from active fires chokes you. Nausea near furnaces, smokers, and campfires.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Have 64 cooked cod in your inventory at once.","color":"green"}]