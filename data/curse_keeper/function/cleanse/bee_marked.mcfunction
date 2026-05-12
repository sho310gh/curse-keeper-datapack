# ============================================================
# curse_keeper:cleanse/bee_marked
# Triggered when player has consumed 100 honey bottles.
# ============================================================

scoreboard players set @s ck.drink_honey 0

tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"The swarm grows calm. Bee Marked is lifted.","color":"green"}]

function curse_keeper:cleanse/on_cleanse