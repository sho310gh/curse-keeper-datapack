# ============================================================
# curse_keeper:curse/auto_assign
# Removes ready tag then starts individual countdown.
# ============================================================

tag @s remove ck.curse_ready
tag @s add ck.in_countdown
tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple","bold":true},{"text":"Your next curse is being drawn...","color":"light_purple","italic":true}]
function curse_keeper:curse/countdown