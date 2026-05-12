execute unless entity @s[tag=ck.curse_3] run return 0

tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"The fortress stands. The Nether Sickness fades.","color":"green"}]

# Revoke vanilla advancement so it can trigger again next season
advancement revoke @s only minecraft:nether/find_fortress

function curse_keeper:cleanse/on_cleanse