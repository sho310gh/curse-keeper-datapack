# ============================================================
# curse_keeper:curse/assign/picky_eater
# Curse 19 — Picky Eater (Tier 2)
# Restriction: Eating the same food 4+ times causes hunger.
# Cleanse: Earn "A Balanced Diet" advancement.
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier2
tag @s add ck.curse_19
scoreboard players set @s ck.curse_id 19
scoreboard players set @s ck.tier 2

# Initialize all food counters to 0
scoreboard players set @s ck.picky_apple 0
scoreboard players set @s ck.picky_baked_potato 0
scoreboard players set @s ck.picky_beetroot 0
scoreboard players set @s ck.picky_beetroot_soup 0
scoreboard players set @s ck.picky_bread 0
scoreboard players set @s ck.picky_carrot 0
scoreboard players set @s ck.picky_chorus_fruit 0
scoreboard players set @s ck.picky_cooked_chicken 0
scoreboard players set @s ck.picky_cooked_cod 0
scoreboard players set @s ck.picky_cooked_mutton 0
scoreboard players set @s ck.picky_cooked_porkchop 0
scoreboard players set @s ck.picky_cooked_rabbit 0
scoreboard players set @s ck.picky_cooked_salmon 0
scoreboard players set @s ck.picky_cookie 0
scoreboard players set @s ck.picky_dried_kelp 0
scoreboard players set @s ck.picky_enchanted_golden_apple 0
scoreboard players set @s ck.picky_golden_apple 0
scoreboard players set @s ck.picky_golden_carrot 0
scoreboard players set @s ck.picky_honey_bottle 0
scoreboard players set @s ck.picky_melon_slice 0
scoreboard players set @s ck.picky_mushroom_stew 0
scoreboard players set @s ck.picky_poisonous_potato 0
scoreboard players set @s ck.picky_potato 0
scoreboard players set @s ck.picky_pumpkin_pie 0
scoreboard players set @s ck.picky_rabbit_stew 0
scoreboard players set @s ck.picky_beef 0
scoreboard players set @s ck.picky_chicken 0
scoreboard players set @s ck.picky_cod 0
scoreboard players set @s ck.picky_mutton 0
scoreboard players set @s ck.picky_porkchop 0
scoreboard players set @s ck.picky_rabbit 0
scoreboard players set @s ck.picky_salmon 0
scoreboard players set @s ck.picky_rotten_flesh 0
scoreboard players set @s ck.picky_spider_eye 0
scoreboard players set @s ck.picky_cooked_beef 0
scoreboard players set @s ck.picky_suspicious_stew 0
scoreboard players set @s ck.picky_tropical_fish 0
scoreboard players set @s ck.picky_pufferfish 0
scoreboard players set @s ck.picky_cake 0
scoreboard players set @s ck.picky_cake_last 0

effect give @s minecraft:darkness 2 1 false
function curse_keeper:curse/assign/picky_eater_revoke

tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Picky Eater","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"2 — Affliction","color":"dark_red"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Eating the same food 4+ times makes you sick.","color":"white"}]
tellraw @s [{"text":"Safe food: ","color":"gray"},{"text":"Sweet berries","color":"green"},{"text":" — eat as many as you want.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Earn 'A Balanced Diet' advancement.","color":"green"}]