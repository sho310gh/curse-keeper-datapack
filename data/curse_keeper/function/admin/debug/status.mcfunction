# ============================================================
# curse_keeper:admin/debug/status
# Server-wide curse roster with red names and face icons.
# Requires a "ck_cursed" team for color/face formatting.
# ============================================================

# Create team if not exists (run once in setup or here)
team add ck_cursed
team modify ck_cursed color red

tellraw @s ["",{"text":"--- ","color":"dark_gray"},{"text":"CK CURSE ROSTER","color":"dark_purple","bold":true},{"text":" ---","color":"dark_gray"}]

tellraw @s ["",{"text":"[GLOBAL] ","color":"gold"},{"text":"System: ","color":"gray"},{"score":{"name":"#ck","objective":"ck.system_on"},"color":"yellow"},{"text":" | Dev: ","color":"gray"},{"score":{"name":"#ck","objective":"ck.dev_mode"},"color":"yellow"}]

# --- Curse roster ---
# Temporarily add cursed players to team for red color, then remove
execute as @a[tag=ck.curse_1] run team join ck_cursed @s
tellraw @s ["",{"text":"[1] ","color":"yellow"},{"text":"Bone Debt: ","color":"gray"},{"selector":"@a[tag=ck.curse_1]"}]
execute as @a[tag=ck.curse_1] run team leave @s

execute as @a[tag=ck.curse_2] run team join ck_cursed @s
tellraw @s ["",{"text":"[2] ","color":"yellow"},{"text":"Frail Vessel: ","color":"gray"},{"selector":"@a[tag=ck.curse_2]"}]
execute as @a[tag=ck.curse_2] run team leave @s

execute as @a[tag=ck.curse_3] run team join ck_cursed @s
tellraw @s ["",{"text":"[3] ","color":"yellow"},{"text":"Nether Sickness: ","color":"gray"},{"selector":"@a[tag=ck.curse_3]"}]
execute as @a[tag=ck.curse_3] run team leave @s

execute as @a[tag=ck.curse_4] run team join ck_cursed @s
tellraw @s ["",{"text":"[4] ","color":"yellow"},{"text":"Bloodless: ","color":"gray"},{"selector":"@a[tag=ck.curse_4]"}]
execute as @a[tag=ck.curse_4] run team leave @s

execute as @a[tag=ck.curse_5] run team join ck_cursed @s
tellraw @s ["",{"text":"[5] ","color":"yellow"},{"text":"Ender Blockade: ","color":"gray"},{"selector":"@a[tag=ck.curse_5]"}]
execute as @a[tag=ck.curse_5] run team leave @s

execute as @a[tag=ck.curse_6] run team join ck_cursed @s
tellraw @s ["",{"text":"[6] ","color":"yellow"},{"text":"Sluggish: ","color":"gray"},{"selector":"@a[tag=ck.curse_6]"}]
execute as @a[tag=ck.curse_6] run team leave @s

execute as @a[tag=ck.curse_7] run team join ck_cursed @s
tellraw @s ["",{"text":"[7] ","color":"yellow"},{"text":"Soul Drain: ","color":"gray"},{"selector":"@a[tag=ck.curse_7]"}]
execute as @a[tag=ck.curse_7] run team leave @s

execute as @a[tag=ck.curse_8] run team join ck_cursed @s
tellraw @s ["",{"text":"[8] ","color":"yellow"},{"text":"Villager's Bane: ","color":"gray"},{"selector":"@a[tag=ck.curse_8]"}]
execute as @a[tag=ck.curse_8] run team leave @s

execute as @a[tag=ck.curse_9] run team join ck_cursed @s
tellraw @s ["",{"text":"[9] ","color":"yellow"},{"text":"Bee Marked: ","color":"gray"},{"selector":"@a[tag=ck.curse_9]"}]
execute as @a[tag=ck.curse_9] run team leave @s

execute as @a[tag=ck.curse_10] run team join ck_cursed @s
tellraw @s ["",{"text":"[10] ","color":"yellow"},{"text":"Vampirism: ","color":"gray"},{"selector":"@a[tag=ck.curse_10]"}]
execute as @a[tag=ck.curse_10] run team leave @s

execute as @a[tag=ck.curse_11] run team join ck_cursed @s
tellraw @s ["",{"text":"[11] ","color":"yellow"},{"text":"Arachnophobia: ","color":"gray"},{"selector":"@a[tag=ck.curse_11]"}]
execute as @a[tag=ck.curse_11] run team leave @s

execute as @a[tag=ck.curse_12] run team join ck_cursed @s
tellraw @s ["",{"text":"[12] ","color":"yellow"},{"text":"Rootbound: ","color":"gray"},{"selector":"@a[tag=ck.curse_12]"}]
execute as @a[tag=ck.curse_12] run team leave @s

execute as @a[tag=ck.curse_13] run team join ck_cursed @s
tellraw @s ["",{"text":"[13] ","color":"yellow"},{"text":"Grave Pact: ","color":"gray"},{"selector":"@a[tag=ck.curse_13]"}]
execute as @a[tag=ck.curse_13] run team leave @s

execute as @a[tag=ck.curse_14] run team join ck_cursed @s
tellraw @s ["",{"text":"[14] ","color":"yellow"},{"text":"Landlocked: ","color":"gray"},{"selector":"@a[tag=ck.curse_14]"}]
execute as @a[tag=ck.curse_14] run team leave @s

execute as @a[tag=ck.curse_15] run team join ck_cursed @s
tellraw @s ["",{"text":"[15] ","color":"yellow"},{"text":"Moonbound: ","color":"gray"},{"selector":"@a[tag=ck.curse_15]"}]
execute as @a[tag=ck.curse_15] run team leave @s

execute as @a[tag=ck.curse_16] run team join ck_cursed @s
tellraw @s ["",{"text":"[16] ","color":"yellow"},{"text":"Soul Debt: ","color":"gray"},{"selector":"@a[tag=ck.curse_16]"}]
execute as @a[tag=ck.curse_16] run team leave @s

execute as @a[tag=ck.curse_17] run team join ck_cursed @s
tellraw @s ["",{"text":"[17] ","color":"yellow"},{"text":"Echo Marked: ","color":"gray"},{"selector":"@a[tag=ck.curse_17]"}]
execute as @a[tag=ck.curse_17] run team leave @s

execute as @a[tag=ck.curse_18] run team join ck_cursed @s
tellraw @s ["",{"text":"[18] ","color":"yellow"},{"text":"Campfire Cough: ","color":"gray"},{"selector":"@a[tag=ck.curse_18]"}]
execute as @a[tag=ck.curse_18] run team leave @s

execute as @a[tag=ck.curse_19] run team join ck_cursed @s
tellraw @s ["",{"text":"[19] ","color":"yellow"},{"text":"Picky Eater: ","color":"gray"},{"selector":"@a[tag=ck.curse_19]"}]
execute as @a[tag=ck.curse_19] run team leave @s

execute as @a[tag=ck.curse_20] run team join ck_cursed @s
tellraw @s ["",{"text":"[20] ","color":"yellow"},{"text":"Heavy Plate: ","color":"gray"},{"selector":"@a[tag=ck.curse_20]"}]
execute as @a[tag=ck.curse_20] run team leave @s

# --- Cooldown roster ---
execute as @a[tag=ck.on_cooldown,tag=!ck.cursed] run team join ck_cursed @s
tellraw @s ["",{"text":"[CD] ","color":"aqua"},{"text":"On cooldown: ","color":"gray"},{"selector":"@a[tag=ck.on_cooldown,tag=!ck.cursed]"}]
execute as @a[tag=ck.on_cooldown,tag=!ck.cursed] run team leave @s

# --- Free / clean ---
tellraw @s ["",{"text":"[OK] ","color":"green"},{"text":"Clean: ","color":"gray"},{"selector":"@a[tag=!ck.cursed,tag=!ck.on_cooldown,tag=!ck.season_free]"}]
tellraw @s ["",{"text":"[SF] ","color":"light_purple"},{"text":"Season free: ","color":"gray"},{"selector":"@a[tag=ck.season_free]"}]

tellraw @s ["",{"text":"--- ","color":"dark_gray"},{"text":"End","color":"dark_gray"},{"text":" ---","color":"dark_gray"}]