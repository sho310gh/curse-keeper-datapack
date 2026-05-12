# ============================================================
# Curse 8 — Villager's Bane (Tier 1)
# Restriction: Poison + Nausea applied when within 5 blocks of a villager
# Cleanse: Kill 10 iron golems
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier1
tag @s add ck.curse_8
scoreboard players set @s ck.curse_id 8
scoreboard players set @s ck.tier 1
scoreboard players set @s ck.kill_iron_golem 0

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Villager's Bane","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"1 — Quirk","color":"yellow"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Villagers make you violently ill. Being within 5 blocks of one applies Poison and Nausea.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 10 Iron Golems.","color":"green"}]
tellraw @s [{"text":"Tip: ","color":"gray"},{"text":"Run /trigger ck.showcurse to check your curse anytime.\n","color":"aqua"}]