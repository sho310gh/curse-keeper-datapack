# ============================================================
# curse_keeper:curse/assign/echo_marked
# Curse 17 — Echo Marked (Tier 3)
# Restriction: A warden spawns every other night near you.
# Cleanse: Kill 5 wardens (curse-spawned ones don't count).
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier3
tag @s add ck.curse_17
tag @s add ck.night_triggered
scoreboard players set @s ck.curse_id 17
scoreboard players set @s ck.tier 3

# Initialize night count to 1 so first night triggers a spawn
scoreboard players set @s ck.night_count 1
scoreboard players set @s ck.spawn_night 0

# Initialize curse warden kill counter
scoreboard players set @s ck.curse_warden_kills 0

effect give @s minecraft:darkness 2 1 false

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Echo Marked","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"3 — Malediction","color":"dark_red"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Every other night a Warden emerges near you, enraged and hungry.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 5 Wardens. Curse-spawned Wardens do not count.","color":"green"}]