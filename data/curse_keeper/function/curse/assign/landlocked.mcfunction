# ============================================================
# Curse 14 — Landlocked (Tier 2)
# Restriction: Half-heart damage every 3 seconds when submerged in water
# Cleanse: Obtain Conduit Power effect
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier2
tag @s add ck.curse_14
scoreboard players set @s ck.curse_id 14
scoreboard players set @s ck.tier 2
scoreboard players set @s ck.water_timer 0

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Landlocked","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"2 — Affliction","color":"yellow"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Water is your enemy. Submerging yourself deals half a heart every 3 seconds.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Obtain the Conduit Power effect.","color":"green"}]