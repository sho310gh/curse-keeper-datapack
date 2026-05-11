# ============================================================
# curse_keeper:curse/curse_all
# Tags all eligible players then starts the countdown.
# ============================================================

execute if score #ck ck.system_on matches 0 run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"System is OFF. Enable it in the admin panel first.","color":"red"}]
execute if score #ck ck.system_on matches 0 run return 0

# Tag all online uncursed non-season-free players for the countdown
tag @a[tag=!ck.cursed, tag=!ck.season_free, tag=!ck.on_cooldown] add ck.in_countdown

# Check if anyone is eligible
execute unless entity @a[tag=ck.in_countdown] run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"No eligible players to curse.","color":"red"}]
execute unless entity @a[tag=ck.in_countdown] run return 0

# Announce to server
tellraw @a [{"text":"[Curse Keeper] ","color":"dark_purple","bold":true},{"text":"The Curse Keeper stirs...","color":"gray","italic":true}]

# Start countdown (runs as server, uses ck.in_countdown tag)
function curse_keeper:curse/countdown