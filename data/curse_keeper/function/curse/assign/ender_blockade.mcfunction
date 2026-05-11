# ============================================================
# Curse 5 — Ender Blockade (Tier 3)
# Restriction: Cannot enter the End dimension
# Cleanse: Free the End advancement
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier3
tag @s add ck.curse_5
scoreboard players set @s ck.curse_id 5
scoreboard players set @s ck.tier 3

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Ender Blockade","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"3 — Malediction","color":"dark_red"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"You cannot enter the End dimension.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 10 Ravagers.","color":"green"}]
tellraw @s [{"text":"\n","color":"gray"}]