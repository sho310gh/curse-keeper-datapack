# ============================================================
# curse_keeper:admin/panel
# Uses modern 26.1 text component format:
#   click_event + command (not clickEvent + value)
#   hover_event + value   (not hoverEvent + contents)
# ============================================================

tellraw @s [{"text":"☠ Curse Keeper - Admin Panel","color":"dark_purple","bold":true}]
tellraw @s [{"text":"----------------------------","color":"dark_purple"}]
tellraw @s [{"text":"System active: ","color":"aqua"},{"storage":"curse_keeper:settings","nbt":"admin.system_on","color":"green","click_event":{"action":"run_command","command":"/function curse_keeper:admin/toggle_system"},"hover_event":{"action":"show_text","value":{"text":"Click to toggle","color":"yellow"}}}]
tellraw @s [{"text":"Dev mode: ","color":"aqua"},{"storage":"curse_keeper:settings","nbt":"admin.dev_mode","color":"green","click_event":{"action":"run_command","command":"/function curse_keeper:admin/toggle_dev"},"hover_event":{"action":"show_text","value":{"text":"DEV = 2min cooldown / PROD = 7 day cooldown","color":"yellow"}}}]
tellraw @s [{"text":"----------------------------","color":"dark_purple"}]
tellraw @s [{"text":"Curse All Online Players","color":"gold","click_event":{"action":"run_command","command":"/function curse_keeper:curse/curse_all"},"hover_event":{"action":"show_text","value":{"text":"Start countdown and curse everyone online","color":"yellow"}}}]
tellraw @s [{"text":"Reset All Players","color":"red","click_event":{"action":"run_command","command":"/function curse_keeper:admin/reset_all"},"hover_event":{"action":"show_text","value":{"text":"Remove all curses and reset all player data","color":"yellow"}}}]
tellraw @s [{"text":"List Cursed Players","color":"green","click_event":{"action":"run_command","command":"/function curse_keeper:admin/list"},"hover_event":{"action":"show_text","value":{"text":"Show all cursed players and their curse","color":"yellow"}}}]
tellraw @s [{"text":"My Debug Status","color":"gray","click_event":{"action":"run_command","command":"/function curse_keeper:admin/debug/status"},"hover_event":{"action":"show_text","value":{"text":"Show your own scores and tags","color":"yellow"}}}]
tellraw @s [{"text":"----------------------------","color":"dark_purple"}]