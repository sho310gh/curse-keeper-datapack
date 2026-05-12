# Randomly picks a curse for tier 1 players
# Curse 1 = Bone Debt, Curse 6 = Sluggish, Curse 8 = Villager's Bane

execute store result score @s ck.curse_id run random value 1..3
execute if score @s ck.curse_id matches 1 run scoreboard players set @s ck.curse_id 1
execute if score @s ck.curse_id matches 2 run scoreboard players set @s ck.curse_id 6
execute if score @s ck.curse_id matches 3 run scoreboard players set @s ck.curse_id 8