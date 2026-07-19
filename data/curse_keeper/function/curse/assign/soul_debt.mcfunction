# ============================================================
# Curse 16 — Soul Debt (Tier 3)
# Restriction: Each death removes 1 max heart. Stops at 1 heart.
# Cleanse: Kill the Ender Dragon 3 times
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier3
tag @s add ck.curse_16
scoreboard players set @s ck.curse_id 16
scoreboard players set @s ck.tier 3
scoreboard players set @s ck.debt_hearts 20
scoreboard players set @s ck.kill_ender_dragon 0

attribute @s minecraft:max_health base set 20

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Soul Debt","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"3 — Malediction","color":"dark_red"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Every time you die, you lose 1 max heart permanently. The debt stops at 1 heart.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill the Ender Dragon 3 times.","color":"green"}]