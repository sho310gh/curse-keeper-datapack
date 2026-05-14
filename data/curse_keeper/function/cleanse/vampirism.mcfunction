# ============================================================
# curse_keeper:cleanse/vampirism
# Triggered when player has killed 50 phantoms AND consumed 20 milk buckets.
# ============================================================

scoreboard players set @s ck.kill_phantom 0
scoreboard players set @s ck.drink_milk 0

# tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"The darkness within you fades. Vampirism is lifted.","color":"green"}]

function curse_keeper:cleanse/on_cleanse