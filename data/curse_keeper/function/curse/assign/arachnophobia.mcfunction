# ============================================================
# Curse 11 — Arachnophobia (Tier 1)
# Restriction: Spiders aggro within 24 blocks, spider spawns every 2 min at night in Overworld
# Cleanse: Kill 100 spiders
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier1
tag @s add ck.curse_11
scoreboard players set @s ck.curse_id 11
scoreboard players set @s ck.tier 1
scoreboard players set @s ck.spider_timer 0

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Arachnophobia","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"1 — Quirk","color":"yellow"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Spiders sense your fear. They aggro onto you within 24 blocks, and spawn near you at night.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 100 Spiders.","color":"green"}]