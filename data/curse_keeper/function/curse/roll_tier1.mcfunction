# Randomly picks a curse for tier 1 players
# Curse 1 = Bone Debt, Curse 6 = Sluggish, Curse 8 = Villager's Bane
# Curse 9 = Bee Marked, Curse 11 = Arachnophobia, Curse 12 = Rootbound
# Curse 18 = Campfire Cough, Curse 20 = Heavy Plate

execute store result score @s ck.curse_id run random value 1..8
execute if score @s ck.curse_id matches 1 run scoreboard players set @s ck.curse_id 1
execute if score @s ck.curse_id matches 2 run scoreboard players set @s ck.curse_id 20
execute if score @s ck.curse_id matches 3 run scoreboard players set @s ck.curse_id 6
execute if score @s ck.curse_id matches 4 run scoreboard players set @s ck.curse_id 8
execute if score @s ck.curse_id matches 5 run scoreboard players set @s ck.curse_id 9
execute if score @s ck.curse_id matches 6 run scoreboard players set @s ck.curse_id 11
execute if score @s ck.curse_id matches 7 run scoreboard players set @s ck.curse_id 12
execute if score @s ck.curse_id matches 8 run scoreboard players set @s ck.curse_id 18