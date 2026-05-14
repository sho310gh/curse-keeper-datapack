# ============================================================
# curse_keeper:cleanse/sluggish
# Triggered when player has walked 5,000,000 cm.
# ============================================================

scoreboard players set @s ck.walk_dist 0

# tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Your legs have found their strength again. Sluggish is lifted.","color":"green"}]

function curse_keeper:cleanse/on_cleanse