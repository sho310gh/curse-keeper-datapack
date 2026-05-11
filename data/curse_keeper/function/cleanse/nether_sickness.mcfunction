execute unless entity @s[tag=ck.curse_3] run advancement revoke @s only curse_keeper:cleanse/t2_nether_sickness
execute unless entity @s[tag=ck.curse_3] run return 0

tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"The fortress stands. The Nether Sickness fades.","color":"green"}]

advancement revoke @s only curse_keeper:cleanse/t2_nether_sickness

function curse_keeper:cleanse/on_cleanse