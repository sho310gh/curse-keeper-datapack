execute unless entity @s[tag=ck.curse_7] run return 0

scoreboard players set @s ck.xp_level 0

tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Your soul is whole again. Soul Drain is lifted.","color":"green"}]

function curse_keeper:cleanse/on_cleanse