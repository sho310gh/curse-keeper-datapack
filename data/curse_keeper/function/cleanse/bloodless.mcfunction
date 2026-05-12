execute unless entity @s[tag=ck.curse_4] run return 0

tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Every effect flows through you. The Bloodless curse is broken.","color":"green"}]

advancement revoke @s only minecraft:nether/all_effects

function curse_keeper:cleanse/on_cleanse