# ============================================================
# curse_keeper:admin/toggle_system
# Reads storage string to decide direction — avoids the
# sequential score-flip bug entirely.
# When system turns ON: force PROD mode (dev_mode = 0)
# ============================================================

scoreboard players set #ck_temp ck.system_on 1
execute if score #ck ck.system_on matches 1 run scoreboard players set #ck_temp ck.system_on 0
scoreboard players operation #ck ck.system_on = #ck_temp ck.system_on
execute if score #ck ck.system_on matches 1 run data modify storage curse_keeper:settings admin.system_on set value "Enabled"
execute if score #ck ck.system_on matches 0 run data modify storage curse_keeper:settings admin.system_on set value "Disabled"

# When system is turned ON — force dev_mode to 0 (PROD) and sync storage
execute if score #ck ck.system_on matches 1 run scoreboard players set #ck ck.dev_mode 0
execute if score #ck ck.system_on matches 1 run data modify storage curse_keeper:settings admin.dev_mode set value "Disabled"

function curse_keeper:admin/panel