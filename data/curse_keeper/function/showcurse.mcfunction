# ============================================================
# curse_keeper:showcurse
# Shows the player their current curse, description and progress.
# Usage: /function curse_keeper:showcurse
# ============================================================

# Show cooldown status if on cooldown
execute if entity @s[tag=ck.on_cooldown] run tellraw @s [{"text":"\n--- ","color":"dark_purple"},{"text":"Curse Cooldown","color":"light_purple","bold":true},{"text":" ---","color":"dark_purple"}]
execute if entity @s[tag=ck.on_cooldown] run tellraw @s [{"text":"Status: ","color":"gray"},{"text":"On cooldown — next curse incoming.","color":"yellow"}]
execute if entity @s[tag=ck.on_cooldown] run function curse_keeper:util/show_cooldown
execute if entity @s[tag=ck.on_cooldown] run tellraw @s [{"text":"--- ","color":"dark_purple"},{"text":"End","color":"light_purple"},{"text":" ---\n","color":"dark_purple"}]
execute if entity @s[tag=ck.on_cooldown] run return 0

# If not cursed
execute unless entity @s[tag=ck.cursed] run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"You are not currently cursed.","color":"gray"}]
execute unless entity @s[tag=ck.cursed] run return 0

# Header
tellraw @s [{"text":"\n--- ","color":"dark_purple"},{"text":"Your Curse","color":"light_purple","bold":true},{"text":" ---","color":"dark_purple"}]

# Bone Debt
execute if entity @s[tag=ck.curse_1] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Bone Debt","color":"red","bold":true},{"text":" (Tier 1)","color":"yellow"}]
execute if entity @s[tag=ck.curse_1] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Max health reduced by 3 hearts.","color":"white"}]
execute if entity @s[tag=ck.curse_1] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 150 skeletons — ","color":"green"},{"score":{"name":"@s","objective":"ck.kill_skele"},"color":"yellow"},{"text":"/150","color":"gray"}]

# Frail Vessel
execute if entity @s[tag=ck.curse_2] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Frail Vessel","color":"red","bold":true},{"text":" (Tier 2)","color":"yellow"}]
execute if entity @s[tag=ck.curse_2] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Max health reduced to 4 hearts.","color":"white"}]
execute if entity @s[tag=ck.curse_2] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Equip a full set of diamond armor while cursed.","color":"green"}]

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

# Sluggish
execute if entity @s[tag=ck.curse_6] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Sluggish","color":"red","bold":true},{"text":" (Tier 1)","color":"dark_red"}]
execute if entity @s[tag=ck.curse_6] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Your movement speed is reduced by 30%.","color":"white"}]
execute if entity @s[tag=ck.curse_6] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Walk 5,000,000 cm — ","color":"green"},{"score":{"name":"@s","objective":"ck.walk_dist"},"color":"yellow"},{"text":"/5,000,000","color":"gray"}]
# Soul Drain
execute if entity @s[tag=ck.curse_7] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Soul Drain","color":"red","bold":true},{"text":" (Tier 2)","color":"dark_red"}]
execute if entity @s[tag=ck.curse_7] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"You lose 1 XP level every 30 seconds.","color":"white"}]
execute if entity @s[tag=ck.curse_7] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Reach level 50 while cursed.","color":"green"}]

# Villager's Bane
execute if entity @s[tag=ck.curse_8] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Villager's Bane","color":"red","bold":true},{"text":" (Tier 1)","color":"dark_red"}]
execute if entity @s[tag=ck.curse_8] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Being within 5 blocks of a villager applies Poison and Nausea.","color":"white"}]
execute if entity @s[tag=ck.curse_8] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 10 Iron Golems — ","color":"green"},{"score":{"name":"@s","objective":"ck.kill_iron_golem"},"color":"yellow"},{"text":"/10","color":"gray"}]

# Bee Marked
execute if entity @s[tag=ck.curse_9] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Bee Marked","color":"red","bold":true},{"text":" (Tier 1)","color":"yellow"}]
execute if entity @s[tag=ck.curse_9] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Bees within 16 blocks aggro onto you automatically.","color":"white"}]
execute if entity @s[tag=ck.curse_9] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Consume 20 honey bottles — ","color":"green"},{"score":{"name":"@s","objective":"ck.drink_honey"},"color":"yellow"},{"text":"/20 | Use 20 honeycombs — ","color":"gray"},{"score":{"name":"@s","objective":"ck.use_honeycomb"},"color":"yellow"},{"text":"/20","color":"gray"}]

# Vampirism
execute if entity @s[tag=ck.curse_10] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Vampirism","color":"red","bold":true},{"text":" (Tier 2)","color":"dark_red"}]
execute if entity @s[tag=ck.curse_10] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Standing exposed under the sun in the Overworld sets you on fire.","color":"white"}]
execute if entity @s[tag=ck.curse_10] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 20 Phantoms — ","color":"green"},{"score":{"name":"@s","objective":"ck.kill_phantom"},"color":"yellow"},{"text":"/20","color":"gray"},{"text":" | Drink 20 Milk Buckets — ","color":"green"},{"score":{"name":"@s","objective":"ck.drink_milk"},"color":"yellow"},{"text":"/20","color":"gray"}]

# Arachnophobia
execute if entity @s[tag=ck.curse_11] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Arachnophobia","color":"red","bold":true},{"text":" (Tier 1)","color":"dark_red"}]
execute if entity @s[tag=ck.curse_11] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Spiders aggro onto you within 24 blocks. A spider spawns near you every 2 minutes at night.","color":"white"}]
execute if entity @s[tag=ck.curse_11] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 100 Spiders — ","color":"green"},{"score":{"name":"@s","objective":"ck.kill_spider"},"color":"yellow"},{"text":"/100","color":"gray"}]

# Rootbound
execute if entity @s[tag=ck.curse_12] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Rootbound","color":"red","bold":true},{"text":" (Tier 1)","color":"dark_red"}]
execute if entity @s[tag=ck.curse_12] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Every 10 grass blocks broken, nature slows you for 5 seconds.","color":"white"}]
execute if entity @s[tag=ck.curse_12] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 100 Creepers — ","color":"green"},{"score":{"name":"@s","objective":"ck.kill_creeper"},"color":"yellow"},{"text":"/100","color":"gray"}]

# Grave Pact
scoreboard players operation @s ck.grave_hearts_display = @s ck.grave_hearts
scoreboard players operation @s ck.grave_hearts_display /= #2 ck.const
execute if entity @s[tag=ck.curse_13] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Grave Pact","color":"red","bold":true},{"text":" (Tier 2)","color":"dark_red"}]
execute if entity @s[tag=ck.curse_13] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Each sleep removes 1 max heart. Death resets your hearts to full.","color":"white"}]
execute if entity @s[tag=ck.curse_13] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill the Wither","color":"green"}]
scoreboard players set @s ck.grave_hearts_display 0

# Landlocked
execute if entity @s[tag=ck.curse_14] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Landlocked","color":"red","bold":true},{"text":" (Tier 2)","color":"dark_red"}]
execute if entity @s[tag=ck.curse_14] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Being submerged in water deals half a heart every 3 seconds.","color":"white"}]
execute if entity @s[tag=ck.curse_14] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Obtain the Conduit Power effect.","color":"green"}]

# Moonbound
execute if entity @s[tag=ck.curse_15] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Moonbound","color":"red","bold":true},{"text":" (Tier 3)","color":"dark_red"}]
execute if entity @s[tag=ck.curse_15] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Standing exposed under the night sky in the Overworld sets you on fire.","color":"white"}]
execute if entity @s[tag=ck.curse_15] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill the Elder Guardian 6 times — ","color":"green"},{"score":{"name":"@s","objective":"ck.kill_elder_guardian"},"color":"yellow"},{"text":"/6","color":"gray"}]

# Soul Debt
execute if entity @s[tag=ck.curse_16] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Soul Debt","color":"red","bold":true},{"text":" (Tier 3)","color":"dark_red"}]
execute if entity @s[tag=ck.curse_16] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Every death removes 1 max heart permanently. Stops at 1 heart.","color":"white"}]
execute if entity @s[tag=ck.curse_16] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill the Ender Dragon 3 times — ","color":"green"},{"score":{"name":"@s","objective":"ck.kill_ender_dragon"},"color":"yellow"},{"text":"/3","color":"gray"}]

# Echo Marked
execute if entity @s[tag=ck.curse_17] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Echo Marked","color":"red","bold":true},{"text":" (Tier 3)","color":"dark_red"}]
execute if entity @s[tag=ck.curse_17] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"A Warden emerges near you every other night.","color":"white"}]
execute if entity @s[tag=ck.curse_17] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 5 Wardens (Curse Spawned Wardens don't count) — ","color":"green"},{"score":{"name":"@s","objective":"ck.curse_warden_kills"},"color":"yellow"},{"text":"/5","color":"gray"}]

# Campfire Cough
execute if entity @s[tag=ck.curse_18] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Campfire Cough","color":"red","bold":true},{"text":" (Tier 2)","color":"dark_red"}]
execute if entity @s[tag=ck.curse_18] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Nausea near active furnaces, smokers, and campfires.","color":"white"}]
execute if entity @s[tag=ck.curse_18] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Have 64 cooked cod in your inventory.","color":"green"}]

# Picky Eater
execute if entity @s[tag=ck.curse_19] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Picky Eater","color":"red","bold":true},{"text":" (Tier 2)","color":"dark_red"}]
execute if entity @s[tag=ck.curse_19] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Eating the same food 4+ times makes you sick.","color":"white"}]
execute if entity @s[tag=ck.curse_19] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Earn 'A Balanced Diet' advancement.","color":"green"}]

# Heavy Plate
execute if entity @s[tag=ck.curse_20] run tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Heavy Plate","color":"red","bold":true},{"text":" (Tier 1)","color":"yellow"}]
execute if entity @s[tag=ck.curse_20] run tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Non-exempt armor slows you. 1=5% 2=10% 3=20% 4=40%.","color":"white"}]
execute if entity @s[tag=ck.curse_20] run tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 50 Skeletons & 50 Zombies — Skeletons: ","color":"green"},{"score":{"name":"@s","objective":"ck.hp_kill_skele"},"color":"yellow"},{"text":"/50","color":"gray"},{"text":" Zombies: ","color":"green"},{"score":{"name":"@s","objective":"ck.hp_kill_zombie"},"color":"yellow"},{"text":"/50","color":"gray"}]

# Cooldown status
tellraw @s [{"text":"--- ","color":"dark_purple"},{"text":"End","color":"light_purple"},{"text":" ---\n","color":"dark_purple"}]