# ============================================================
# curse_keeper:cleanse/soul_debt
# Triggered when player has killed the Ender Dragon 3 times
# ============================================================

execute unless entity @s[tag=ck.curse_16] run return 0

# Restore max health on cleanse
attribute @s minecraft:max_health base set 20
scoreboard players set @s ck.debt_hearts 20
scoreboard players set @s ck.kill_ender_dragon 0
tag @s remove ck.debt_dying

function curse_keeper:cleanse/on_cleanse