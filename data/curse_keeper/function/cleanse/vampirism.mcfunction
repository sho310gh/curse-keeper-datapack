# ============================================================
# curse_keeper:cleanse/vampirism
# Triggered when player has killed 20 phantoms AND consumed 20 milk buckets.
# ============================================================

scoreboard players set @s ck.kill_phantom 0
scoreboard players set @s ck.drink_milk 0

function curse_keeper:cleanse/on_cleanse