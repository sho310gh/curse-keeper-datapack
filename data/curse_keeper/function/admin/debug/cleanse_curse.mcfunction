# ============================================================
# curse_keeper:admin/debug/cleanse_curse
# Instantly triggers the cleanse for whatever curse the target player has.
# Runs the normal on_cleanse flow — cooldown proceeds as normal.
# Usage: /function curse_keeper:admin/debug/cleanse_curse {player:"NAME"}
# ============================================================

$execute as $(player) if entity @s[tag=ck.curse_1] run function curse_keeper:cleanse/bone_debt
$execute as $(player) if entity @s[tag=ck.curse_2] run function curse_keeper:cleanse/frail_vessel
$execute as $(player) if entity @s[tag=ck.curse_3] run function curse_keeper:cleanse/nether_sickness
$execute as $(player) if entity @s[tag=ck.curse_4] run function curse_keeper:cleanse/bloodless
$execute as $(player) if entity @s[tag=ck.curse_5] run function curse_keeper:cleanse/ender_blockade
$execute as $(player) if entity @s[tag=ck.curse_6] run function curse_keeper:cleanse/sluggish
$execute as $(player) if entity @s[tag=ck.curse_7] run function curse_keeper:cleanse/soul_drain
$execute as $(player) if entity @s[tag=ck.curse_8] run function curse_keeper:cleanse/villagers_bane
$execute as $(player) if entity @s[tag=ck.curse_9] run function curse_keeper:cleanse/bee_marked
$execute as $(player) if entity @s[tag=ck.curse_10] run function curse_keeper:cleanse/vampirism
$execute as $(player) if entity @s[tag=ck.curse_11] run function curse_keeper:cleanse/arachnophobia
$execute as $(player) if entity @s[tag=ck.curse_12] run function curse_keeper:cleanse/rootbound
$execute as $(player) if entity @s[tag=ck.curse_13] run function curse_keeper:cleanse/grave_pact
$execute as $(player) if entity @s[tag=ck.curse_14] run function curse_keeper:cleanse/landlocked
$execute as $(player) if entity @s[tag=ck.curse_15] run function curse_keeper:cleanse/moonbound
$execute as $(player) if entity @s[tag=ck.curse_16] run function curse_keeper:cleanse/soul_debt