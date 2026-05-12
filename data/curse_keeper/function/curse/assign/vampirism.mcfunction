# ============================================================
# Curse 10 — Vampirism (Tier 2)
# Restriction: Catches fire in the overworld during daytime when exposed to sky
# Cleanse: Kill 50 phantoms AND consume 20 milk buckets
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier2
tag @s add ck.curse_10
scoreboard players set @s ck.curse_id 10
scoreboard players set @s ck.tier 2
scoreboard players set @s ck.vamp_timer 0

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Vampirism","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"2 — Affliction","color":"yellow"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Sunlight is your enemy. Standing exposed under the sun in the Overworld will set you ablaze.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 50 Phantoms and consume 20 milk buckets.","color":"green"}]
tellraw @s [{"text":"\n","color":"gray"}]