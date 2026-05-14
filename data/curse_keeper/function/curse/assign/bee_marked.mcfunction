# ============================================================
# Curse 9 — Bee Marked (Tier 3)
# Restriction: Bees within 16 blocks aggro onto the player automatically
# Cleanse: Consume 100 honey bottles
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier3
tag @s add ck.curse_9
scoreboard players set @s ck.curse_id 9
scoreboard players set @s ck.tier 3
scoreboard players set @s ck.drink_honey 0

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Bee Marked","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"3 — Malediction","color":"dark_red"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Bees sense your corruption. Any bee within 16 blocks will aggro onto you instantly.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Consume 100 honey bottles.","color":"green"}]