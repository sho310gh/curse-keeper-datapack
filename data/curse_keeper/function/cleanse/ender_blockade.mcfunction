# ============================================================
# curse_keeper:cleanse/ender_blockade
# Triggered when player reaches 10 ravager kills.
# ============================================================

scoreboard players set @s ck.kill_ravager 0

tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"The ravagers have been vanquished. The End calls to you no more.","color":"green"}]

function curse_keeper:cleanse/on_cleanse