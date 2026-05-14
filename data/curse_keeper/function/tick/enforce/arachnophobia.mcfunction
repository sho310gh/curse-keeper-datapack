# ============================================================
# curse_keeper:tick/enforce/arachnophobia
# Angers spiders within 24 blocks of cursed player.
# Spawns a spider every 2 minutes at night in the Overworld.
# Runs every tick via router.
# ============================================================

# Increment spider timer
execute as @a[tag=ck.curse_11] run scoreboard players add @s ck.spider_timer 1

# Anger nearby spiders that are not already angry
execute as @a[tag=ck.curse_11] at @s run function curse_keeper:tick/enforce/arachnophobia_anger
tag @e remove ck.aggro_spider

# Every 2400 ticks (2 min), spawn a spider near the player at night in the Overworld
execute as @a[tag=ck.curse_11, scores={ck.spider_timer=2400..}] at @s in minecraft:overworld if score #ck ck.day_check matches 13000..23999 run function curse_keeper:tick/enforce/arachnophobia_spawn
execute as @a[tag=ck.curse_11, scores={ck.spider_timer=2400..}] run scoreboard players set @s ck.spider_timer 0