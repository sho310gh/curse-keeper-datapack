# ============================================================
# curse_keeper:cleanse/arachnophobia
# Triggered when player has killed 100 spiders.
# ============================================================

execute unless entity @s[tag=ck.curse_11] run return 0

scoreboard players set @s ck.kill_spider 0
scoreboard players set @s ck.spider_timer 0

# tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"The webs fade from your mind. Arachnophobia is lifted.","color":"green"}]

function curse_keeper:cleanse/on_cleanse