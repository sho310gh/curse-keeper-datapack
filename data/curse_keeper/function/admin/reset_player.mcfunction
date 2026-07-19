# ============================================================
# curse_keeper:admin/reset_player
# Resets a single player's curse data.
# Usage: /function curse_keeper:admin/reset_player {player:"SHO310"}
# ============================================================

$tag $(player) remove ck.cursed
$tag $(player) remove ck.on_cooldown
$tag $(player) remove ck.season_free
$tag $(player) remove ck.tier1
$tag $(player) remove ck.tier2
$tag $(player) remove ck.tier3
$tag $(player) remove ck.curse_1
$tag $(player) remove ck.curse_2
$tag $(player) remove ck.curse_3
$tag $(player) remove ck.curse_4
$tag $(player) remove ck.curse_5
$tag $(player) remove ck.curse_6
$tag $(player) remove ck.curse_7
$tag $(player) remove ck.curse_8
$tag $(player) remove ck.curse_9
$tag $(player) remove ck.curse_10
$tag $(player) remove ck.curse_11
$tag $(player) remove ck.curse_12
$tag $(player) remove ck.curse_13
$tag $(player) remove ck.curse_14
$tag $(player) remove ck.curse_15
$tag $(player) remove ck.curse_16
$tag $(player) remove ck.curse_17
$tag $(player) remove ck.curse_18
$tag $(player) remove ck.curse_19
$tag $(player) remove ck.curse_20
$tag $(player) remove ck.curse_ready
$tag $(player) remove ck.in_countdown
$tag $(player) remove ck.soul_cleansing
$tag $(player) remove ck.grave_sleeping
$tag $(player) remove ck.debt_dying
$tag $(player) remove ck.night_triggered

$scoreboard players reset $(player) ck.curse_id
$scoreboard players reset $(player) ck.tier
$scoreboard players reset $(player) ck.cooldown
$scoreboard players reset $(player) ck.nether_timer
$scoreboard players reset $(player) ck.prev_health
$scoreboard players reset $(player) ck.season_free
$scoreboard players reset $(player) ck.kill_skele
$scoreboard players reset $(player) ck.walk_dist
$scoreboard players reset $(player) ck.soul_timer
$scoreboard players reset $(player) ck.xp_level
$scoreboard players reset $(player) ck.kill_iron_golem
$scoreboard players reset $(player) ck.drink_honey
$scoreboard players reset $(player) ck.use_honeycomb
$scoreboard players reset $(player) ck.kill_phantom
$scoreboard players reset $(player) ck.drink_milk
$scoreboard players reset $(player) ck.vamp_timer
$scoreboard players reset $(player) ck.bee_timer
$scoreboard players reset $(player) ck.kill_spider
$scoreboard players reset $(player) ck.spider_timer
$scoreboard players reset $(player) ck.kill_creeper
$scoreboard players reset $(player) ck.grass_broken
$scoreboard players reset $(player) ck.rootbound_mod
$scoreboard players reset $(player) ck.grave_hearts
$scoreboard players reset $(player) ck.grave_slept
$scoreboard players reset $(player) ck.kill_wither
$scoreboard players reset $(player) ck.water_timer
$scoreboard players reset $(player) ck.kill_elder_guardian
$scoreboard players reset $(player) ck.moon_timer
$scoreboard players reset $(player) ck.debt_hearts
$scoreboard players reset $(player) ck.kill_ender_dragon
$scoreboard players reset $(player) ck.kill_player
$scoreboard players reset $(player) ck.curse_warden_kills
$scoreboard players reset $(player) ck.daytime
$scoreboard players reset $(player) ck.spawn_night

$scoreboard players reset $(player) ck.picky_apple
$scoreboard players reset $(player) ck.picky_baked_potato
$scoreboard players reset $(player) ck.picky_beetroot
$scoreboard players reset $(player) ck.picky_beetroot_soup
$scoreboard players reset $(player) ck.picky_bread
$scoreboard players reset $(player) ck.picky_carrot
$scoreboard players reset $(player) ck.picky_chorus_fruit
$scoreboard players reset $(player) ck.picky_cooked_chicken
$scoreboard players reset $(player) ck.picky_cooked_cod
$scoreboard players reset $(player) ck.picky_cooked_mutton
$scoreboard players reset $(player) ck.picky_cooked_porkchop
$scoreboard players reset $(player) ck.picky_cooked_rabbit
$scoreboard players reset $(player) ck.picky_cooked_salmon
$scoreboard players reset $(player) ck.picky_cookie
$scoreboard players reset $(player) ck.picky_dried_kelp
$scoreboard players reset $(player) ck.picky_enchanted_golden_apple
$scoreboard players reset $(player) ck.picky_golden_apple
$scoreboard players reset $(player) ck.picky_golden_carrot
$scoreboard players reset $(player) ck.picky_honey_bottle
$scoreboard players reset $(player) ck.picky_melon_slice
$scoreboard players reset $(player) ck.picky_mushroom_stew
$scoreboard players reset $(player) ck.picky_poisonous_potato
$scoreboard players reset $(player) ck.picky_potato
$scoreboard players reset $(player) ck.picky_pumpkin_pie
$scoreboard players reset $(player) ck.picky_rabbit_stew
$scoreboard players reset $(player) ck.picky_beef
$scoreboard players reset $(player) ck.picky_chicken
$scoreboard players reset $(player) ck.picky_cod
$scoreboard players reset $(player) ck.picky_mutton
$scoreboard players reset $(player) ck.picky_porkchop
$scoreboard players reset $(player) ck.picky_rabbit
$scoreboard players reset $(player) ck.picky_salmon
$scoreboard players reset $(player) ck.picky_rotten_flesh
$scoreboard players reset $(player) ck.picky_spider_eye
$scoreboard players reset $(player) ck.picky_cooked_beef
$scoreboard players reset $(player) ck.picky_suspicious_stew
$scoreboard players reset $(player) ck.picky_tropical_fish
$scoreboard players reset $(player) ck.picky_pufferfish
$scoreboard players reset $(player) ck.picky_cake
$scoreboard players reset $(player) ck.picky_cake_last
$scoreboard players reset $(player) ck.cake_slices
$scoreboard players reset $(player) ck.armor_count
$scoreboard players reset $(player) ck.hp_kill_skele
$scoreboard players reset $(player) ck.hp_kill_zombie

$attribute $(player) minecraft:max_health base set 20
$attribute $(player) minecraft:movement_speed base set 0.1
$attribute $(player) minecraft:movement_speed modifier remove curse_keeper:heavy_plate_speed

$effect clear $(player) minecraft:darkness
$effect clear $(player) minecraft:poison
$effect clear $(player) minecraft:nausea
$effect clear $(player) minecraft:hunger

$execute as $(player) run function curse_keeper:admin/revoke_picky_eater

kill @e[type=minecraft:warden,tag=ck.curse_warden,distance=..100]

$tellraw $(player) [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Your curse has been reset by an admin.","color":"gray"}]
tellraw @a[tag=ck.cursed] [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"A player's curse has been reset by an admin.","color":"gray"}]