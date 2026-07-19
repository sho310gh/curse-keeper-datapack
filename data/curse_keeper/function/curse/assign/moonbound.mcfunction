# ============================================================
# Curse 15 — Moonbound (Tier 3)
# Restriction: Fire placed under player when exposed to sky at night
# Cleanse: Kill the Elder Guardian 6 times
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier3
tag @s add ck.curse_15
scoreboard players set @s ck.curse_id 15
scoreboard players set @s ck.tier 3
scoreboard players set @s ck.moon_timer 0
scoreboard players set @s ck.kill_elder_guardian 0

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Moonbound","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"3 — Malediction","color":"dark_red"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"The moonlight scorches you. Standing exposed under the night sky sets you ablaze.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill the Elder Guardian 6 times.","color":"green"}]