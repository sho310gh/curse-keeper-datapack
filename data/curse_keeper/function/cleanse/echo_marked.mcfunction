# ============================================================
# curse_keeper:cleanse/echo_marked
# Triggered when player has 5 natural warden kills.
# ============================================================

execute unless entity @s[tag=ck.curse_17] run return 0

# Reset counters
scoreboard players set @s ck.curse_warden_kills 0
scoreboard players set @s ck.spawn_night 0
tag @s remove ck.night_triggered

function curse_keeper:cleanse/on_cleanse