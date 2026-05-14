# ============================================================
# curse_keeper:cleanse/grave_pact
# Triggered when player has reached 1 heart AND killed the Wither.
# ============================================================

execute unless entity @s[tag=ck.curse_13] run return 0

# Restore max health on cleanse
attribute @s minecraft:max_health base set 20
scoreboard players set @s ck.grave_hearts 0
scoreboard players set @s ck.grave_slept 0
scoreboard players set @s ck.kill_wither 0
tag @s remove ck.grave_sleeping

# tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"The pact is fulfilled. Grave Pact is lifted.","color":"green"}]

function curse_keeper:cleanse/on_cleanse