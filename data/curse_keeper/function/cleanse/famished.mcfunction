# ============================================================
# curse_keeper:cleanse/famished
# Triggered when player has consumed 5 enchanted golden apples.
# ============================================================

scoreboard players set @s ck.eat_ega 0

tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Your hunger is finally sated. Famished is lifted.","color":"green"}]

function curse_keeper:cleanse/on_cleanse