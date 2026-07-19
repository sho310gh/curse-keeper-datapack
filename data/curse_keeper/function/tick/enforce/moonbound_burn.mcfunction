# Always reset timer first
scoreboard players set @s ck.moon_timer 0

# Night is ticks 13000..23000 — inverse of Vampirism
# Carved pumpkin in head slot blocks moonlight burn
execute in minecraft:overworld at @s if score #ck ck.day_check matches 13000..23000 if predicate curse_keeper:can_see_sky unless entity @s[nbt={equipment:{head:{id:"minecraft:carved_pumpkin",count:1}}}] run setblock ~ ~ ~ minecraft:fire
execute in minecraft:overworld at @s if score #ck ck.day_check matches 13000..23000 if predicate curse_keeper:can_see_sky unless entity @s[nbt={equipment:{head:{id:"minecraft:carved_pumpkin",count:1}}}] run title @s actionbar {"text":"✦ Moonbound — Moonlight burns you ✦","color":"blue","bold":true}