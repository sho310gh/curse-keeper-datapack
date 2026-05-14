# ============================================================
# curse_keeper:cleanse/villagers_bane
# Triggered when player has killed 10 iron golems.
# ============================================================

scoreboard players set @s ck.kill_iron_golem 0

# tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"The iron guardians have fallen. Villager's Bane is lifted.","color":"green"}]

function curse_keeper:cleanse/on_cleanse