# ============================================================
# curse_keeper:tick/enforce/campfire_cough_grid
# 4-block spacing grid at current Y level
# ============================================================

# Store count of lit campfires within 5 blocks horizontally, 2 blocks vertically
execute as @a[tag=ck.curse_18] at @s store success score @s ck.near_heat1 run clone ~-7 ~-7 ~-7 ~7 ~7 ~7 ~-7 ~-7 ~-7 filtered minecraft:campfire[lit=true] force
execute as @a[tag=ck.curse_18] at @s store success score @s ck.near_heat2 run clone ~-7 ~-7 ~-7 ~7 ~7 ~7 ~-7 ~-7 ~-7 filtered minecraft:soul_campfire[lit=true] force
execute as @a[tag=ck.curse_18] at @s store success score @s ck.near_heat3 run clone ~-7 ~-7 ~-7 ~7 ~7 ~7 ~-7 ~-7 ~-7 filtered minecraft:furnace[lit=true] force
execute as @a[tag=ck.curse_18] at @s store success score @s ck.near_heat4 run clone ~-7 ~-7 ~-7 ~7 ~7 ~7 ~-7 ~-7 ~-7 filtered minecraft:smoker[lit=true] force

# Apply nausea if any count > 0
execute as @a[tag=ck.curse_18] if score @s ck.near_heat1 matches 1.. run effect give @s minecraft:nausea 6 0 true
execute as @a[tag=ck.curse_18] if score @s ck.near_heat2 matches 1.. run effect give @s minecraft:nausea 6 0 true
execute as @a[tag=ck.curse_18] if score @s ck.near_heat3 matches 1.. run effect give @s minecraft:nausea 6 0 true
execute as @a[tag=ck.curse_18] if score @s ck.near_heat4 matches 1.. run effect give @s minecraft:nausea 6 0 true