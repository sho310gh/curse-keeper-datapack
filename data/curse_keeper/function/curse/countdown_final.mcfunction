# Final title and sound for all players in countdown
title @a[tag=ck.in_countdown] title {"text":"☠ YOU ARE CURSED ☠","color":"dark_purple","bold":true}
title @a[tag=ck.in_countdown] subtitle {"text":"Your fate has been sealed...","color":"gray","italic":true}
execute as @a[tag=ck.in_countdown] at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1

# Assign curse to each player in countdown
execute as @a[tag=ck.in_countdown] run function curse_keeper:curse/assign_random

# Remove the countdown tag
tag @a remove ck.in_countdown