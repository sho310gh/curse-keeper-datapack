# ============================================================
# curse_keeper:tick/main
# Runs every game tick (20x per second).
# Admin panel trigger runs ALWAYS (so admin can turn system on).
# All other systems only run when ck.system_on = 1.
# ============================================================

# Always: listen for admin panel trigger
scoreboard players enable @a ck.admin
execute as @a[scores={ck.admin=1..}] run function curse_keeper:admin/panel
execute as @a[scores={ck.admin=1..}] run scoreboard players set @s ck.admin 0

# Gated: rest of the system only runs when active
execute if score #ck ck.system_on matches 1 run function curse_keeper:tick/router

# Always: listen for showcurse trigger
scoreboard players enable @a ck.showcurse
execute as @a[scores={ck.showcurse=1..}] run function curse_keeper:showcurse
execute as @a[scores={ck.showcurse=1..}] run scoreboard players set @s ck.showcurse 0