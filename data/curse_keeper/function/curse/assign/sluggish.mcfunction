# ============================================================
# Curse 6 — Sluggish (Tier 1)
# Restriction: Movement speed reduced by 30%
# Cleanse: Walk 5,000,000 cm
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier1
tag @s add ck.curse_6
scoreboard players set @s ck.curse_id 6
scoreboard players set @s ck.tier 1
scoreboard players set @s ck.walk_dist 0

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Sluggish","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"1 — Quirk","color":"yellow"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Your movement speed is reduced by 30%.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Walk 5,000,000 cm.","color":"green"}]
tellraw @s [{"text":"Tip: ","color":"gray"},{"text":"Run /trigger ck.showcurse to check your curse anytime.\n","color":"aqua"}]