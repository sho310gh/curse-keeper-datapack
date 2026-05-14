# ============================================================
# curse_keeper:cleanse/rootbound
# Triggered when player has killed 100 creepers.
# ============================================================

execute unless entity @s[tag=ck.curse_12] run return 0

scoreboard players set @s ck.kill_creeper 0
scoreboard players set @s ck.rootbound_mod 0

# tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"The roots release their hold. Rootbound is lifted.","color":"green"}]

function curse_keeper:cleanse/on_cleanse