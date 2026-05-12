# Increment drain timer
execute as @a[tag=ck.curse_7] run scoreboard players add @s ck.soul_timer 1

# Read current XP level into score every tick
execute as @a[tag=ck.curse_7] store result score @s ck.xp_level run xp query @s levels

# At 600 ticks, drain 1 level if player has one and reset timer
execute as @a[tag=ck.curse_7, scores={ck.soul_timer=600..}] if entity @s[scores={ck.xp_level=1..}] run xp add @s -1 levels
execute as @a[tag=ck.curse_7, scores={ck.soul_timer=600..}] run scoreboard players set @s ck.soul_timer 0