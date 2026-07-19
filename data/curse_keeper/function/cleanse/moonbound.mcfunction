# ============================================================
# curse_keeper:cleanse/moonbound
# Triggered when player has killed 6 Elder Guardians.
# ============================================================

execute unless entity @s[tag=ck.curse_15] run return 0

scoreboard players set @s ck.kill_elder_guardian 0
scoreboard players set @s ck.moon_timer 0

function curse_keeper:cleanse/on_cleanse