# Randomly picks a curse for tier 1 players
# Curse 1 = Bone Debt, Curse 6 = Sluggish, Curse X = Villager's Bane (next)
# Update the range as new tier 1 curses are added
execute store result score @s ck.curse_id run random value 1..2
execute if score @s ck.curse_id matches 2 run scoreboard players set @s ck.curse_id 6