# Curse 2 = Frail Vessel, Curse 3 = Nether Sickness, Curse 7 = Soul Drain
# Curse 10 = Vampirism, Curse 13 = Grave Pact, Curse 14 = Landlocked
execute store result score @s ck.curse_id run random value 1..6

execute if score @s ck.curse_id matches 1 run scoreboard players set @s ck.curse_id 2
execute if score @s ck.curse_id matches 2 run scoreboard players set @s ck.curse_id 3
execute if score @s ck.curse_id matches 3 run scoreboard players set @s ck.curse_id 7
execute if score @s ck.curse_id matches 4 run scoreboard players set @s ck.curse_id 10
execute if score @s ck.curse_id matches 5 run scoreboard players set @s ck.curse_id 13
execute if score @s ck.curse_id matches 6 run scoreboard players set @s ck.curse_id 14