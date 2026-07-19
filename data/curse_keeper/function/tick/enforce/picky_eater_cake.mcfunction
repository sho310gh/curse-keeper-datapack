# ============================================================
# curse_keeper:tick/enforce/picky_eater_cake
# Runs when cake slices increased since last tick.
# ============================================================

scoreboard players add @s ck.picky_cake 1

execute if score @s ck.picky_cake matches 4.. run effect give @s minecraft:hunger 30 0 true
execute if score @s ck.picky_cake matches 4.. run effect give @s minecraft:poison 10 0 true
execute if score @s ck.picky_cake matches 4.. run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Your stomach churns... eating too much cake makes you sick.","color":"red"}]