# ============================================================
# curse_keeper:tick/enforce/picky_eater_golden_apple
# ============================================================

execute unless entity @s[tag=ck.curse_19] run return 0

scoreboard players add @s ck.picky_golden_apple 1

execute if score @s ck.picky_golden_apple matches 4.. run effect give @s minecraft:hunger 30 0 true
execute if score @s ck.picky_golden_apple matches 4.. run effect give @s minecraft:poison 10 0 true
execute if score @s ck.picky_golden_apple matches 4.. run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Your stomach churns... eating too much golden apple makes you sick.","color":"red"}]

advancement revoke @s only curse_keeper:picky_eater_golden_apple
