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
$tag $(player) remove ck.curse_ready
$tag $(player) remove ck.in_countdown
$tag $(player) remove ck.soul_cleansing
$tag $(player) remove ck.grave_sleeping
$tag $(player) remove ck.debt_dying

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

$attribute $(player) minecraft:max_health base set 20
$attribute $(player) minecraft:movement_speed base set 0.1

$effect clear $(player) minecraft:darkness
$effect clear $(player) minecraft:poison
$effect clear $(player) minecraft:nausea
$effect clear $(player) minecraft:hunger

$tellraw $(player) [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Your curse has been reset by an admin.","color":"gray"}]
tellraw @a[tag=ck.cursed] [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"A player's curse has been reset by an admin.","color":"gray"}]