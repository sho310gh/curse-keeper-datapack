# Curse 4 = Bloodless, Curse 5 = Ender Blockade, Curse 9 = Bee Marked
# Curse 15 = Moonbound, Curse 16 = Soul Debt
execute store result score @s ck.curse_id run random value 1..5

execute if score @s ck.curse_id matches 1 run scoreboard players set @s ck.curse_id 4
execute if score @s ck.curse_id matches 2 run scoreboard players set @s ck.curse_id 5
execute if score @s ck.curse_id matches 3 run scoreboard players set @s ck.curse_id 9
execute if score @s ck.curse_id matches 4 run scoreboard players set @s ck.curse_id 15
execute if score @s ck.curse_id matches 5 run scoreboard players set @s ck.curse_id 16