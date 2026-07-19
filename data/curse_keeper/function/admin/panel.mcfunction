# ============================================================
# curse_keeper:admin/panel
# Uses modern 26.1 text component format:
#   click_event + command (not clickEvent + value)
#   hover_event + value   (not hoverEvent + contents)
# ============================================================

tellraw @s [{"text":"--------------------------------","color":"dark_purple"}]
tellraw @s [{"text":"☠ Curse Keeper - Admin Panel","color":"dark_purple","bold":true}]
tellraw @s [{"text":"--------------------------------","color":"dark_purple"}]
tellraw @s [{"text":"System active: ","color":"aqua"},{"storage":"curse_keeper:settings","nbt":"admin.system_on","color":"green","click_event":{"action":"run_command","command":"/function curse_keeper:admin/toggle_system"},"hover_event":{"action":"show_text","value":{"text":"Click to toggle","color":"yellow"}}}]
tellraw @s [{"text":"Dev mode: ","color":"aqua"},{"storage":"curse_keeper:settings","nbt":"admin.dev_mode","color":"green","click_event":{"action":"run_command","command":"/function curse_keeper:admin/toggle_dev"},"hover_event":{"action":"show_text","value":{"text":"DEV = 2min cooldown / PROD = 7 day cooldown","color":"yellow"}}}]
tellraw @s [{"text":"--------------------------------","color":"dark_purple"}]
tellraw @s [{"text":"Curse All Online Players","color":"gold","click_event":{"action":"run_command","command":"/function curse_keeper:curse/curse_all"},"hover_event":{"action":"show_text","value":{"text":"Start countdown and curse everyone online","color":"yellow"}}}]
tellraw @s [{"text":"Curse Single Player","color":"gold","click_event":{"action":"suggest_command","command":"/function curse_keeper:curse/curse_player {player:\"NAME\"}"},"hover_event":{"action":"show_text","value":{"text":"Click to pre-fill — replace NAME with player name","color":"yellow"}}}]
tellraw @s [{"text":"Curse Player with Curse ID","color":"gold","click_event":{"action":"suggest_command","command":"/function curse_keeper:admin/debug/assign_curse {player:\"NAME\", curse_id:1}"},"hover_event":{"action":"show_text","value":[{"text":"Click to pre-fill — replace NAME and ID\n","color":"yellow"},{"text":"1 Bone Debt | 2 Frail Vessel | 3 Nether Sickness\n","color":"gray"},{"text":"4 Bloodless | 5 Ender Blockade | 6 Sluggish\n","color":"gray"},{"text":"7 Soul Drain | 8 Villager's Bane | 9 Bee Marked\n","color":"gray"},{"text":"10 Vampirism | 11 Arachnophobia | 12 Rootbound\n","color":"gray"},{"text":"13 Grave Pact | 14 Landlocked | 15 Moonbound\n","color":"gray"},{"text":"16 Soul Debt | 17 Echo Marked | 18 Campfire Cough\n","color":"gray"},{"text":"19 Picky Eater | 20 Heavy Plate","color":"gray"}]}}]
tellraw @s [{"text":"Reset All Players","color":"red","click_event":{"action":"run_command","command":"/function curse_keeper:admin/reset_all"},"hover_event":{"action":"show_text","value":{"text":"Remove all curses and reset all player data","color":"yellow"}}}]
tellraw @s [{"text":"Reset Single Player","color":"red","click_event":{"action":"suggest_command","command":"/function curse_keeper:admin/reset_player {player:\"NAME\"}"},"hover_event":{"action":"show_text","value":{"text":"Click to pre-fill — replace NAME with player name","color":"yellow"}}}]
tellraw @s [{"text":"List Cursed Players","color":"green","click_event":{"action":"run_command","command":"/function curse_keeper:admin/list"},"hover_event":{"action":"show_text","value":{"text":"Show all cursed players and their curse","color":"yellow"}}}]
tellraw @s [{"text":"My Debug Status","color":"gray","click_event":{"action":"run_command","command":"/function curse_keeper:admin/debug/status"},"hover_event":{"action":"show_text","value":{"text":"Show your own scores and tags","color":"yellow"}}}]
tellraw @s [{"text":"--------------------------------","color":"dark_purple"}]