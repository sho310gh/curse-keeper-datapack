# Randomly picks a curse for tier 3 players
# Curse 4 = Bloodless, Curse 5 = Ender Blockade, Curse 9 = Bee Marked

execute store result score @s ck.curse_id run random value 1..3
execute if score @s ck.curse_id matches 1 run scoreboard players set @s ck.curse_id 4
execute if score @s ck.curse_id matches 2 run scoreboard players set @s ck.curse_id 5
execute if score @s ck.curse_id matches 3 run scoreboard players set @s ck.curse_id 9