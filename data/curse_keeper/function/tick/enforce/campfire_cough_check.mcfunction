# ============================================================
# curse_keeper:tick/enforce/campfire_cough_check
# Macro: $(x), $(z) — offset from current position
# ============================================================

$execute positioned ~$(x) ~ ~$(z) if block ~ ~ ~ minecraft:campfire[lit=true] run effect give @s minecraft:nausea 6 0 true
$execute positioned ~$(x) ~ ~$(z) if block ~ ~ ~ minecraft:soul_campfire[lit=true] run effect give @s minecraft:nausea 6 0 true
$execute positioned ~$(x) ~ ~$(z) if block ~ ~ ~ minecraft:furnace[lit=true] run effect give @s minecraft:nausea 6 0 true
$execute positioned ~$(x) ~ ~$(z) if block ~ ~ ~ minecraft:smoker[lit=true] run effect give @s minecraft:nausea 6 0 true