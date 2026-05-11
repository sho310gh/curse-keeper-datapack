# ============================================================
# Curse 3 — Nether Sickness (Tier 2)
# Restriction: 1 heart damage every 15s in the Nether
# Cleanse: A Terrible Fortress advancement
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier2
tag @s add ck.curse_3
scoreboard players set @s ck.curse_id 3
scoreboard players set @s ck.tier 2

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Nether Sickness","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"2 — Affliction","color":"yellow"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"You take 1 heart of damage every 15 seconds spent in the Nether.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Enter a Nether Fortress (A Terrible Fortress).","color":"green"}]
tellraw @s [{"text":"\n","color":"gray"}]