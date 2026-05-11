# ============================================================
# curse_keeper:util/start_cooldown
# Dev mode:  2400 ticks (2 minutes)
# Prod mode: 144000 ticks (120 min online = ~6 in-game days)
# ============================================================

tag @s add ck.on_cooldown

execute if score #ck ck.dev_mode matches 1 run scoreboard players set @s ck.cooldown 2400
execute if score #ck ck.dev_mode matches 0 run scoreboard players set @s ck.cooldown 144000

execute if score #ck ck.dev_mode matches 1 run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Cooldown started — 2 minutes until next curse draw (DEV mode).","color":"yellow"}]
execute if score #ck ck.dev_mode matches 0 run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Cooldown started — your next curse will be drawn after 120 minutes online.","color":"yellow"}]