# ============================================================
# curse_keeper:admin/toggle_dev
# Same pattern — reads storage to decide direction.
# ============================================================

scoreboard players set #ck_temp ck.dev_mode 1
execute if score #ck ck.dev_mode matches 1 run scoreboard players set #ck_temp ck.dev_mode 0
scoreboard players operation #ck ck.dev_mode = #ck_temp ck.dev_mode
execute if score #ck ck.dev_mode matches 1 run data modify storage curse_keeper:settings admin.dev_mode set value "Enabled"
execute if score #ck ck.dev_mode matches 0 run data modify storage curse_keeper:settings admin.dev_mode set value "Disabled"
function curse_keeper:admin/panel