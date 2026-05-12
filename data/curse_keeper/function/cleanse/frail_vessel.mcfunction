execute unless entity @s[tag=ck.curse_2] run return 0

tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Your body grows strong. The Frail Vessel is shattered.","color":"green"}]

advancement revoke @s only minecraft:nether/netherite_armor

function curse_keeper:cleanse/on_cleanse