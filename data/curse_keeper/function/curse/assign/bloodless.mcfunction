# ============================================================
# Curse 4 — Bloodless (Tier 3)
# Restriction: No natural health regeneration
# Cleanse: How Did We Get Here? advancement
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier3
tag @s add ck.curse_4
scoreboard players set @s ck.curse_id 4
scoreboard players set @s ck.tier 3

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Bloodless","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"3 — Malediction","color":"dark_red"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"You cannot regenerate health naturally. Potions and golden apples still work.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Have every effect applied at once (How Did We Get Here?).","color":"green"}]