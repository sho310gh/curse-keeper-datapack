# ============================================================
# curse_keeper:tick/enforce/heavy_plate
# Counts non-exempt armor pieces each tick.
# Exempt: leather and chainmail.
# ============================================================

# Reset armor count
execute as @a[tag=ck.curse_20] run scoreboard players set @s ck.armor_count 0

# --- HEAD ---
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{head:{id:"minecraft:iron_helmet"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{head:{id:"minecraft:copper_helmet"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{head:{id:"minecraft:golden_helmet"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{head:{id:"minecraft:diamond_helmet"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{head:{id:"minecraft:netherite_helmet"}}}] run scoreboard players add @s ck.armor_count 1

# --- CHEST ---
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{chest:{id:"minecraft:iron_chestplate"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{chest:{id:"minecraft:copper_chestplate"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{chest:{id:"minecraft:golden_chestplate"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{chest:{id:"minecraft:diamond_chestplate"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{chest:{id:"minecraft:netherite_chestplate"}}}] run scoreboard players add @s ck.armor_count 1

# --- LEGS ---
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{legs:{id:"minecraft:iron_leggings"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{legs:{id:"minecraft:copper_leggings"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{legs:{id:"minecraft:golden_leggings"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{legs:{id:"minecraft:diamond_leggings"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{legs:{id:"minecraft:netherite_leggings"}}}] run scoreboard players add @s ck.armor_count 1

# --- FEET ---
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{feet:{id:"minecraft:iron_boots"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{feet:{id:"minecraft:copper_boots"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{feet:{id:"minecraft:golden_boots"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{feet:{id:"minecraft:diamond_boots"}}}] run scoreboard players add @s ck.armor_count 1
execute as @a[tag=ck.curse_20] if entity @s[nbt={equipment:{feet:{id:"minecraft:netherite_boots"}}}] run scoreboard players add @s ck.armor_count 1

# Remove old modifier
execute as @a[tag=ck.curse_20] run attribute @s minecraft:movement_speed modifier remove curse_keeper:heavy_plate_speed

# Apply new modifier
execute as @a[tag=ck.curse_20, scores={ck.armor_count=1}] run attribute @s minecraft:movement_speed modifier add curse_keeper:heavy_plate_speed -0.05 add_multiplied_base
execute as @a[tag=ck.curse_20, scores={ck.armor_count=2}] run attribute @s minecraft:movement_speed modifier add curse_keeper:heavy_plate_speed -0.10 add_multiplied_base
execute as @a[tag=ck.curse_20, scores={ck.armor_count=3}] run attribute @s minecraft:movement_speed modifier add curse_keeper:heavy_plate_speed -0.20 add_multiplied_base
execute as @a[tag=ck.curse_20, scores={ck.armor_count=4..}] run attribute @s minecraft:movement_speed modifier add curse_keeper:heavy_plate_speed -0.40 add_multiplied_base