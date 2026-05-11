# ============================================================
# curse_keeper:showcurse
# Shows the player their current curse, description and progress.
# Usage: /function curse_keeper:showcurse
# ============================================================

# Show cooldown status if on cooldown
execute if entity @s[tag=ck.on_cooldown] run tellraw @s [{"text":"\n--- ","color":"dark_purple"},{"text":"Curse Cooldown","color":"light_purple","bold":true},{"text":" ---","color":"dark_purple"}]
execute if entity @s[tag=ck.on_cooldown] run tellraw @s [{"text":"Status: ","color":"gray"},{"text":"On cooldown — next curse incoming.","color":"yellow"}]
execute if entity @s[tag=ck.on_cooldown] run tellraw @s [{"text":"Ticks remaining: ","color":"gray"},{"score":{"name":"@s","objective":"ck.cooldown"},"color":"yellow"}]
execute if entity @s[tag=ck.on_cooldown] run tellraw @s [{"text":"--- ","color":"dark_purple"},{"text":"End","color":"light_purple"},{"text":" ---\n","color":"dark_purple"}]
execute if entity @s[tag=ck.on_cooldown] run return 0

# If not cursed
execute unless entity @s[tag=ck.cursed] run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"You are not currently cursed.","color":"gray"}]
execute unless entity @s[tag=ck.cursed] run return 0

# Header
tellraw @s [{"text":"\n--- ","color":"dark_purple"},{"text":"Your Curse","color":"light_purple","bold":true},{"text":" ---","color":"dark_purple"}]

# Bone Debt
execute if entity @s[tag=ck.curse_1] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Bone Debt","color":"red","bold":true},{"text":" (Tier 1)","color":"yellow"}]
execute if entity @s[tag=ck.curse_1] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Max health reduced by 5 hearts.","color":"white"}]
execute if entity @s[tag=ck.curse_1] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 150 skeletons — ","color":"green"},{"score":{"name":"@s","objective":"ck.kill_skele"},"color":"yellow"},{"text":"/150","color":"gray"}]

# Frail Vessel
execute if entity @s[tag=ck.curse_2] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Frail Vessel","color":"red","bold":true},{"text":" (Tier 2)","color":"yellow"}]
execute if entity @s[tag=ck.curse_2] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Max health reduced to 5 hearts.","color":"white"}]
execute if entity @s[tag=ck.curse_2] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Obtain full Netherite armor (Cover Me in Debris).","color":"green"}]

# Nether Sickness
execute if entity @s[tag=ck.curse_3] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Nether Sickness","color":"red","bold":true},{"text":" (Tier 2)","color":"yellow"}]
execute if entity @s[tag=ck.curse_3] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"1 heart damage every 15s in the Nether.","color":"white"}]
execute if entity @s[tag=ck.curse_3] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Enter a Nether Fortress (A Terrible Fortress).","color":"green"}]

# Bloodless
execute if entity @s[tag=ck.curse_4] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Bloodless","color":"red","bold":true},{"text":" (Tier 3)","color":"dark_red"}]
execute if entity @s[tag=ck.curse_4] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"No natural health regeneration.","color":"white"}]
execute if entity @s[tag=ck.curse_4] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Have every effect at once (How Did We Get Here?).","color":"green"}]

# Ender Blockade
execute if entity @s[tag=ck.curse_5] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Ender Blockade","color":"red","bold":true},{"text":" (Tier 3)","color":"dark_red"}]
execute if entity @s[tag=ck.curse_5] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Cannot enter the End dimension.","color":"white"}]
execute if entity @s[tag=ck.curse_5] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 10 Ravagers — ","color":"green"},{"score":{"name":"@s","objective":"ck.kill_ravager"},"color":"yellow"},{"text":"/10","color":"gray"}]

# Cooldown status
execute if entity @s[tag=ck.on_cooldown] run tellraw @s [{"text":"Status: ","color":"gray"},{"text":"On cooldown — waiting for next tier draw.","color":"yellow"}]

tellraw @s [{"text":"--- ","color":"dark_purple"},{"text":"End","color":"light_purple"},{"text":" ---\n","color":"dark_purple"}]