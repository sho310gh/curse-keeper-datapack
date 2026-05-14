# ============================================================
# curse_keeper:tick/enforce/grave_pact_wake
# Fires once when the player wakes up.
# Removes 1 max heart if above 1 heart minimum.
# ============================================================

tag @s remove ck.grave_sleeping

execute store result score @s ck.grave_hearts run attribute @s minecraft:max_health base get

execute if score @s ck.grave_hearts matches 20 run attribute @s minecraft:max_health base set 18
execute if score @s ck.grave_hearts matches 18 run attribute @s minecraft:max_health base set 16
execute if score @s ck.grave_hearts matches 16 run attribute @s minecraft:max_health base set 14
execute if score @s ck.grave_hearts matches 14 run attribute @s minecraft:max_health base set 12
execute if score @s ck.grave_hearts matches 12 run attribute @s minecraft:max_health base set 10
execute if score @s ck.grave_hearts matches 10 run attribute @s minecraft:max_health base set 8
execute if score @s ck.grave_hearts matches 8 run attribute @s minecraft:max_health base set 6
execute if score @s ck.grave_hearts matches 6 run attribute @s minecraft:max_health base set 4
execute if score @s ck.grave_hearts matches 4 run attribute @s minecraft:max_health base set 2

execute store result score @s ck.grave_hearts run attribute @s minecraft:max_health base get

execute if score @s ck.grave_hearts matches 4.. run title @s actionbar {"text":"✦ Grave Pact — A heart consumed by sleep ✦","color":"dark_red","bold":true}
execute if score @s ck.grave_hearts matches 2 run title @s actionbar {"text":"✦ Grave Pact — You cannot lose any more hearts ✦","color":"dark_red","bold":true}