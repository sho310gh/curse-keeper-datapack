# ============================================================
# curse_keeper:cleanse/bone_debt
# Triggered when player reaches 150 skeleton kills.
# ============================================================

# Reset kill score so it doesn't re-trigger
scoreboard players set @s ck.kill_skele 0

function curse_keeper:cleanse/on_cleanse