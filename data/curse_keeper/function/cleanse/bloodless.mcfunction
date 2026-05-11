execute unless entity @s[tag=ck.curse_4] run advancement revoke @s only curse_keeper:cleanse/t3_bloodless
execute unless entity @s[tag=ck.curse_4] run return 0

tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Every effect flows through you. The Bloodless curse is broken.","color":"green"}]

advancement revoke @s only curse_keeper:cleanse/t3_bloodless

function curse_keeper:cleanse/on_cleanse