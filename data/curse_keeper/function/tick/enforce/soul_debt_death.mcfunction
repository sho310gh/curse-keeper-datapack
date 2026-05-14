# ============================================================
# curse_keeper:tick/enforce/soul_debt_death
# Fires once after the player respawns following a death.
# Reduces max hearts by 1 if above 1 heart minimum.
# ============================================================

tag @s remove ck.debt_dying

# Only reduce if above 2 HP (1 heart minimum)
execute if score @s ck.debt_hearts matches 20 run attribute @s minecraft:max_health base set 18
execute if score @s ck.debt_hearts matches 18 run attribute @s minecraft:max_health base set 16
execute if score @s ck.debt_hearts matches 16 run attribute @s minecraft:max_health base set 14
execute if score @s ck.debt_hearts matches 14 run attribute @s minecraft:max_health base set 12
execute if score @s ck.debt_hearts matches 12 run attribute @s minecraft:max_health base set 10
execute if score @s ck.debt_hearts matches 10 run attribute @s minecraft:max_health base set 8
execute if score @s ck.debt_hearts matches 8 run attribute @s minecraft:max_health base set 6
execute if score @s ck.debt_hearts matches 6 run attribute @s minecraft:max_health base set 4
execute if score @s ck.debt_hearts matches 4 run attribute @s minecraft:max_health base set 2

execute if score @s ck.debt_hearts matches 4.. run title @s title {"text":"☠ Soul Debt","color":"dark_red","bold":true}
execute if score @s ck.debt_hearts matches 4.. run title @s subtitle {"text":"A heart has been claimed.","color":"red"}

# Update score after reduction
execute store result score @s ck.debt_hearts run attribute @s minecraft:max_health base get

# Warn if at minimum
execute if score @s ck.debt_hearts matches 2 run title @s actionbar {"text":"✦ Soul Debt — You are at your limit ✦","color":"dark_red","bold":true}