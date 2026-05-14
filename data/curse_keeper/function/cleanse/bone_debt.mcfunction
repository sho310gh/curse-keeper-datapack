# ============================================================
# curse_keeper:cleanse/bone_debt
# Triggered when player reaches 150 skeleton kills.
# ============================================================

# Reset kill score so it doesn't re-trigger
scoreboard players set @s ck.kill_skele 0

# tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"The debt is paid. 150 skeletons slain.","color":"green"}]

function curse_keeper:cleanse/on_cleanse