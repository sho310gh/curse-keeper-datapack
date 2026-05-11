# ============================================================
# curse_keeper:curse/countdown
# Runs as the individual player being cursed (@s).
# Shows the countdown titles only to that player.
# ============================================================

title @s clear
title @s times 10 40 10
title @s title {"text":"3","color":"dark_purple","bold":true}
schedule function curse_keeper:curse/countdown_2 40t