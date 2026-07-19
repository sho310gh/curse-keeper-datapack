# ============================================================
# curse_keeper:curse/echo_marked_anger
# Angers all curse wardens at nearby Echo Marked players.
# ============================================================

# For each curse warden, find the nearest echo marked player and anger at them
execute as @e[type=minecraft:warden,tag=ck.curse_warden] at @s run execute as @a[tag=ck.curse_17,distance=..20] run function curse_keeper:curse/echo_marked_anger_target