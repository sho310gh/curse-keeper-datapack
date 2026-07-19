# ============================================================
# curse_keeper:curse/curse_player
# Curses a single player by name using a macro.
# Usage: /function curse_keeper:curse/curse_player {player:"SHO310"}
# ============================================================

# System check
execute if score #ck ck.system_on matches 0 run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"System is OFF.","color":"red"}]
execute if score #ck ck.system_on matches 0 run return 0

# Check if target exists
$execute unless entity $(player) run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Player $(player) not found.","color":"red"}]
$execute unless entity $(player) run return 0

# Check eligibility using @s after 'as $(player)'
$execute as $(player) if entity @s[tag=ck.cursed] run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Player is already cursed.","color":"red"}]
$execute as $(player) if entity @s[tag=ck.cursed] run return 0

$execute as $(player) if entity @s[tag=ck.season_free] run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Player is season-free.","color":"red"}]
$execute as $(player) if entity @s[tag=ck.season_free] run return 0

$execute as $(player) if entity @s[tag=ck.on_cooldown] run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Player is on cooldown.","color":"red"}]
$execute as $(player) if entity @s[tag=ck.on_cooldown] run return 0

# Tag and announce
$tag $(player) add ck.in_countdown
$tellraw @a [{"text":"[Curse Keeper] ","color":"dark_purple","bold":true},{"text":"The Curse Keeper stirs for $(player)...","color":"gray","italic":true}]

# Run countdown
function curse_keeper:curse/countdown