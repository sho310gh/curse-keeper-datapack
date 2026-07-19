# Always reset timer first
scoreboard players set @s ck.vamp_timer 0

# Carved pumpkin in head slot blocks sunlight burn
execute in minecraft:overworld at @s if score #ck ck.day_check matches 0..12000 if predicate curse_keeper:can_see_sky unless entity @s[nbt={equipment:{head:{id:"minecraft:carved_pumpkin",count:1}}}] run setblock ~ ~ ~ minecraft:fire
execute in minecraft:overworld at @s if score #ck ck.day_check matches 0..12000 if predicate curse_keeper:can_see_sky unless entity @s[nbt={equipment:{head:{id:"minecraft:carved_pumpkin",count:1}}}] run title @s actionbar {"text":"✦ Vampirism — Sunlight burns you ✦","color":"red","bold":true}