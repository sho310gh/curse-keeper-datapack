# ============================================================
# curse_keeper:tick/enforce/bone_debt
# Reduces max health by 5 hearts (10 HP) for Bone Debt players.
# Runs every tick via router.
# ============================================================

execute as @a[tag=ck.curse_1] run attribute @s minecraft:max_health base set 10