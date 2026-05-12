# ============================================================
# curse_keeper:admin/debug/assign_curse
# Manually assigns a specific curse to a player by ID.
# Clears any existing curse first before assigning.
# Usage: /function curse_keeper:admin/debug/assign_curse {player:"NAME", curse_id:6}
# ============================================================

# Strip any existing curse state from the target player first
$tag $(player) remove ck.cursed
$tag $(player) remove ck.curse_1
$tag $(player) remove ck.curse_2
$tag $(player) remove ck.curse_3
$tag $(player) remove ck.curse_4
$tag $(player) remove ck.curse_5
$tag $(player) remove ck.curse_6
$tag $(player) remove ck.curse_7
$tag $(player) remove ck.curse_8
$tag $(player) remove ck.curse_9
$tag $(player) remove ck.curse_10
$tag $(player) remove ck.on_cooldown
$scoreboard players set $(player) ck.curse_id 0

# Restore max health and clear effects in case previous curse affected them
$attribute $(player) minecraft:max_health base set 20
$effect clear $(player) minecraft:hunger
$effect clear $(player) minecraft:poison
$effect clear $(player) minecraft:nausea

# Set the requested curse ID on the target and dispatch to assign function
$scoreboard players set $(player) ck.curse_id $(curse_id)
$execute as $(player) if score @s ck.curse_id matches 1 run function curse_keeper:curse/assign/bone_debt
$execute as $(player) if score @s ck.curse_id matches 2 run function curse_keeper:curse/assign/frail_vessel
$execute as $(player) if score @s ck.curse_id matches 3 run function curse_keeper:curse/assign/nether_sickness
$execute as $(player) if score @s ck.curse_id matches 4 run function curse_keeper:curse/assign/bloodless
$execute as $(player) if score @s ck.curse_id matches 5 run function curse_keeper:curse/assign/ender_blockade
$execute as $(player) if score @s ck.curse_id matches 6 run function curse_keeper:curse/assign/sluggish
$execute as $(player) if score @s ck.curse_id matches 7 run function curse_keeper:curse/assign/famished
$execute as $(player) if score @s ck.curse_id matches 8 run function curse_keeper:curse/assign/villagers_bane
$execute as $(player) if score @s ck.curse_id matches 9 run function curse_keeper:curse/assign/bee_marked
$execute as $(player) if score @s ck.curse_id matches 10 run function curse_keeper:curse/assign/vampirism