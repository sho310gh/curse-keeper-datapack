# ============================================================
# curse_keeper:cleanse/picky_eater
# ============================================================

execute unless entity @s[tag=ck.curse_19] run return 0

tag @s remove ck.curse_19

function curse_keeper:admin/revoke_picky_eater

# Reset all picky eater scores
scoreboard players reset @s ck.picky_apple
scoreboard players reset @s ck.picky_baked_potato
scoreboard players reset @s ck.picky_beef
scoreboard players reset @s ck.picky_beetroot
scoreboard players reset @s ck.picky_beetroot_soup
scoreboard players reset @s ck.picky_bread
scoreboard players reset @s ck.picky_carrot
scoreboard players reset @s ck.picky_chicken
scoreboard players reset @s ck.picky_chorus_fruit
scoreboard players reset @s ck.picky_cod
scoreboard players reset @s ck.picky_cooked_beef
scoreboard players reset @s ck.picky_cooked_chicken
scoreboard players reset @s ck.picky_cooked_cod
scoreboard players reset @s ck.picky_cooked_mutton
scoreboard players reset @s ck.picky_cooked_porkchop
scoreboard players reset @s ck.picky_cooked_rabbit
scoreboard players reset @s ck.picky_cooked_salmon
scoreboard players reset @s ck.picky_cookie
scoreboard players reset @s ck.picky_dried_kelp
scoreboard players reset @s ck.picky_enchanted_golden_apple
scoreboard players reset @s ck.picky_golden_apple
scoreboard players reset @s ck.picky_golden_carrot
scoreboard players reset @s ck.picky_honey_bottle
scoreboard players reset @s ck.picky_melon_slice
scoreboard players reset @s ck.picky_mushroom_stew
scoreboard players reset @s ck.picky_mutton
scoreboard players reset @s ck.picky_poisonous_potato
scoreboard players reset @s ck.picky_porkchop
scoreboard players reset @s ck.picky_potato
scoreboard players reset @s ck.picky_pufferfish
scoreboard players reset @s ck.picky_pumpkin_pie
scoreboard players reset @s ck.picky_rabbit
scoreboard players reset @s ck.picky_rabbit_stew
scoreboard players reset @s ck.picky_rotten_flesh
scoreboard players reset @s ck.picky_salmon
scoreboard players reset @s ck.picky_spider_eye
scoreboard players reset @s ck.picky_suspicious_stew
scoreboard players reset @s ck.picky_tropical_fish
scoreboard players reset @s ck.picky_cake
scoreboard players reset @s ck.picky_cake_last

function curse_keeper:cleanse/on_cleanse