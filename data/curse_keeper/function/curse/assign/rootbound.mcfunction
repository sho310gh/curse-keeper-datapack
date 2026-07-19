# ============================================================
# Curse 12 — Rootbound (Tier 1)
# Restriction: Breaking a grass block applies Slowness II for 5 seconds every 10 breaks
# Cleanse: Kill 100 creepers
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier1
tag @s add ck.curse_12
scoreboard players set @s ck.curse_id 12
scoreboard players set @s ck.tier 1
scoreboard players set @s ck.rootbound_mod 0
scoreboard players set @s ck.kill_creeper 0

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Rootbound","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"1 — Quirk","color":"yellow"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"The earth resists you. Every 10 grass blocks broken, nature slows you in your tracks.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 100 Creepers.","color":"green"}]