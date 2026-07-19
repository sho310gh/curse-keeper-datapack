# ============================================================
# Curse 13 — Grave Pact (Tier 2)
# Restriction: Each sleep removes 1 max heart. Death resets max hearts to full.
# Cleanse: Reach 1 heart remaining then kill the Wither
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier2
tag @s add ck.curse_13
scoreboard players set @s ck.curse_id 13
scoreboard players set @s ck.tier 2
scoreboard players set @s ck.grave_hearts 0
scoreboard players set @s ck.grave_slept 0

attribute @s minecraft:max_health base set 20

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Grave Pact","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"2 — Affliction","color":"yellow"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Each time you sleep, you lose 1 max heart. Death resets your hearts to full.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill the Wither.","color":"green"}]