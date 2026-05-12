# ============================================================
# curse_keeper:tick/main
# Runs every game tick (20x per second).
# Admin panel trigger runs ALWAYS (so admin can turn system on).
# All other systems only run when ck.system_on = 1.
# ============================================================

# Always: listen for admin panel trigger — only for tagged admins
scoreboard players enable @a[tag=ck.admin] ck.admin
execute as @a[tag=ck.admin, scores={ck.admin=1..}] run function curse_keeper:admin/panel
execute as @a[tag=ck.admin, scores={ck.admin=1..}] run scoreboard players set @s ck.admin 0

# Non-admins who try to trigger get a message
execute as @a[tag=!ck.admin, scores={ck.admin=1..}] run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"You do not have permission to use the admin panel.","color":"red"}]
execute as @a[tag=!ck.admin, scores={ck.admin=1..}] run scoreboard players set @s ck.admin 0

# Gated: rest of the system only runs when active
execute if score #ck ck.system_on matches 1 run function curse_keeper:tick/router

# Always: listen for showcurse trigger
scoreboard players enable @a ck.showcurse
execute as @a[scores={ck.showcurse=1..}] run function curse_keeper:showcurse
execute as @a[scores={ck.showcurse=1..}] run scoreboard players set @s ck.showcurse 0