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
$tag $(player) remove ck.curse_ready
$tag $(player) remove ck.in_countdown

$scoreboard players reset $(player) ck.curse_id
$scoreboard players reset $(player) ck.tier
$scoreboard players reset $(player) ck.cooldown
$scoreboard players reset $(player) ck.nether_timer
$scoreboard players reset $(player) ck.prev_health
$scoreboard players reset $(player) ck.season_free
$scoreboard players reset $(player) ck.kill_skele

$effect clear $(player) minecraft:darkness

$tellraw $(player) [{"text":"[Curse Keeper] ","color":"dark_purple","bold":true},{"text":"Your curse has been reset by an admin.","color":"gray"}]
tellraw @a[tag=ck.cursed] [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"A player's curse has been reset by an admin.","color":"gray"}]