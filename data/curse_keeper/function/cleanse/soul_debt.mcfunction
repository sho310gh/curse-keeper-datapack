# ============================================================
# curse_keeper:cleanse/soul_debt
# Triggered when player has killed the Ender Dragon 5 times
# AND killed 10 players.
# ============================================================

execute unless entity @s[tag=ck.curse_16] run return 0

# Restore max health on cleanse
attribute @s minecraft:max_health base set 20
scoreboard players set @s ck.debt_hearts 20
scoreboard players set @s ck.kill_ender_dragon 0
scoreboard players set @s ck.kill_player 0
tag @s remove ck.debt_dying

# tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"The debt is paid in full. Soul Debt is lifted.","color":"green"}]

function curse_keeper:cleanse/on_cleanse