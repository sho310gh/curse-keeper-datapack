# ============================================================
# curse_keeper:cleanse/landlocked
# Triggered when player has obtained the Conduit Power effect.
# ============================================================

execute unless entity @s[tag=ck.curse_14] run return 0

scoreboard players set @s ck.water_timer 0

# tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"The waters accept you. Landlocked is lifted.","color":"green"}]

function curse_keeper:cleanse/on_cleanse