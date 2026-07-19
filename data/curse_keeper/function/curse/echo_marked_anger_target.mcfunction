# ============================================================
# curse_keeper:curse/echo_marked_anger_target
# Runs as the target player (@s) with the warden as executor.
# Sets warden anger toward this player.
# ============================================================

# Store player UUID in storage then apply to warden
execute store result storage curse_keeper:temp anger.UUID[0] int 1 run data get entity @s UUID[0]
execute store result storage curse_keeper:temp anger.UUID[1] int 1 run data get entity @s UUID[1]
execute store result storage curse_keeper:temp anger.UUID[2] int 1 run data get entity @s UUID[2]
execute store result storage curse_keeper:temp anger.UUID[3] int 1 run data get entity @s UUID[3]
data modify storage curse_keeper:temp anger.Anger set value 150

# Apply anger to the nearest curse warden
execute as @e[type=minecraft:warden,tag=ck.curse_warden,distance=..20,limit=1,sort=nearest] run data modify entity @s AngerManagement append from storage curse_keeper:temp anger