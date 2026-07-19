# ============================================================
# curse_keeper:tick/enforce/picky_eater_cooked_rabbit
# ============================================================

execute unless entity @s[tag=ck.curse_19] run return 0

scoreboard players add @s ck.picky_cooked_rabbit 1

execute if score @s ck.picky_cooked_rabbit matches 4.. run effect give @s minecraft:hunger 30 0 true
execute if score @s ck.picky_cooked_rabbit matches 4.. run effect give @s minecraft:poison 10 0 true
execute if score @s ck.picky_cooked_rabbit matches 4.. run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Your stomach churns... eating too much cooked rabbit makes you sick.","color":"red"}]

advancement revoke @s only curse_keeper:picky_eater_cooked_rabbit
