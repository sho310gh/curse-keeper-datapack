# ============================================================
# Curse 1 — Bone Debt (Tier 1)
# Restriction: Max health reduced by half (5 hearts penalty)
# Cleanse: Kill 150 skeletons
# ============================================================

tag @s add ck.cursed
tag @s add ck.tier1
tag @s add ck.curse_1
scoreboard players set @s ck.curse_id 1
scoreboard players set @s ck.tier 1
scoreboard players set @s ck.kill_skele 0
execute unless score @s ck.kill_skele = @s ck.kill_skele run scoreboard players set @s ck.kill_skele 0

# Apply darkness effect (icon only, amplitude 0, infinite duration, hide particles)
effect give @s minecraft:darkness 2 1 false

# Announce curse to the player
tellraw @s [{"text":"\n☠ YOU HAVE BEEN CURSED ☠\n","color":"dark_purple","bold":true}]
tellraw @s [{"text":"Curse: ","color":"gray"},{"text":"Bone Debt","color":"red","bold":true}]
tellraw @s [{"text":"Tier: ","color":"gray"},{"text":"1 — Quirk","color":"yellow"}]
tellraw @s [{"text":"Restriction: ","color":"gray"},{"text":"Your max health is reduced by 5 hearts until the debt is paid.","color":"white"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 150 skeletons.","color":"green"}]
tellraw @s [{"text":"Current kills: ","color":"gray"},{"score":{"name":"@s","objective":"ck.kill_skele"},"color":"yellow"},{"text":"/150\n","color":"gray"}]
tellraw @s [{"text":"Cleanse: ","color":"gray"},{"text":"Kill 150 skeletons — ","color":"green"},{"score":{"name":"@s","objective":"ck.kill_skele"},"color":"yellow"},{"text":"/150","color":"gray"}]
tellraw @s [{"text":"Tip: ","color":"gray"},{"text":"Run /trigger ck.showcurse to check your curse anytime.\n","color":"aqua"}]