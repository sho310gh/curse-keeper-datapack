# Runs at the cursed player's position
# Only targets spiders that haven't been angered yet
execute as @e[type=minecraft:spider,distance=..24,tag=!ck.angered_spider] run damage @s 1 minecraft:player_attack by @p[tag=ck.curse_11,distance=..24]
execute as @e[type=minecraft:spider,distance=..24,tag=!ck.angered_spider] run tag @s add ck.angered_spider