# ============================================================
# Curse 2 — Frail Vessel (Tier 2)
# Restriction: Max health reduced to 5 hearts
# Cleanse: Cover Me in Debris advancement
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier2
tag @s add ck.curse_2
scoreboard players set @s ck.curse_id 2
scoreboard players set @s ck.tier 2

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Frail Vessel","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"2 — Affliction","color":"yellow"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Your maximum health is reduced to 5 hearts.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Obtain full Netherite armor (Cover Me in Debris).","color":"green"}]
tellraw @s [{"text":"\n","color":"gray"}]