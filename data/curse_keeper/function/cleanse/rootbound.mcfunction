# ============================================================
# curse_keeper:cleanse/rootbound
# Triggered when player has killed 100 creepers.
# ============================================================

execute unless entity @s[tag=ck.curse_12] run return 0

scoreboard players set @s ck.kill_creeper 0
scoreboard players set @s ck.rootbound_mod 0

function curse_keeper:cleanse/on_cleanse