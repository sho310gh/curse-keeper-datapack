# ============================================================
# curse_keeper:cleanse/landlocked
# Triggered when player has obtained the Conduit Power effect.
# ============================================================

execute unless entity @s[tag=ck.curse_14] run return 0

scoreboard players set @s ck.water_timer 0

function curse_keeper:cleanse/on_cleanse