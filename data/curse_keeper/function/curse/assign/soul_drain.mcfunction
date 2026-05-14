# ============================================================
# Curse 7 — Soul Drain (Tier 2)
# Restriction: Lose 1 XP level every 30 seconds if you have one
# Cleanse: Reach level 50 while cursed
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier2
tag @s add ck.curse_7
scoreboard players set @s ck.curse_id 7
scoreboard players set @s ck.tier 2

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Soul Drain","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"2 — Affliction","color":"yellow"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Your soul slowly bleeds away. You lose 1 XP level every 30 seconds.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Reach level 50 while cursed.","color":"green"}]