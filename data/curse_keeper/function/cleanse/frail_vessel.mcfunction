# Only proceed if player has this curse
execute unless entity @s[tag=ck.curse_2] run advancement revoke @s only curse_keeper:cleanse/t2_frail_vessel
execute unless entity @s[tag=ck.curse_2] run return 0

tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Your body grows strong. The Frail Vessel is shattered.","color":"green"}]

# Revoke so it can trigger again next season
advancement revoke @s only curse_keeper:cleanse/t2_frail_vessel

function curse_keeper:cleanse/on_cleanse