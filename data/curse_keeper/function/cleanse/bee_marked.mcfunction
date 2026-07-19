# ============================================================
# curse_keeper:cleanse/bee_marked
# Triggered when player has consumed 20 honey bottles and used 20 honeycombs.
# ============================================================

scoreboard players set @s ck.drink_honey 0
scoreboard players set @s ck.use_honeycomb 0

function curse_keeper:cleanse/on_cleanse