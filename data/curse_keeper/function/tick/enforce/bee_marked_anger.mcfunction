# Runs as the cursed player, at their position
# Loops through each nearby bee individually and damages it as the player
execute as @e[type=minecraft:bee,distance=..32] run damage @s 1 minecraft:player_attack by @p[tag=ck.curse_9,distance=..16]