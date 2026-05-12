# Always reset timer first
scoreboard players set @s ck.vamp_timer 0

# Check conditions using predicate and apply fire
execute in minecraft:overworld at @s if score #ck ck.day_check matches 0..12000 if predicate curse_keeper:can_see_sky run setblock ~ ~ ~ minecraft:fire
execute in minecraft:overworld at @s if score #ck ck.day_check matches 0..12000 if predicate curse_keeper:can_see_sky run title @s actionbar {"text":"✦ Vampirism — Sunlight burns you ✦","color":"red","bold":true}