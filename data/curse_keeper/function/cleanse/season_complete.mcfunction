# ============================================================
# curse_keeper:cleanse/season_complete
# Runs when a player completes all 3 tiers.
# ============================================================

tag @s add ck.season_free
scoreboard players set @s ck.season_free 1
scoreboard players set @s ck.cooldown 0
tag @s remove ck.on_cooldown

# Personal message
tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"}, {"text":"You have completed all three tiers & are permanently curse-free this season.","color":"gray"}]

# Server-wide announcement
tellraw @a [{"text":"[Curse Keeper] ","color":"dark_purple"},{"selector":"@s","color":"white"},{"text":" has broken ALL THREE curses and is ","color":"gray"},{"text":"PERMANENTLY CURSE-FREE","color":"light_purple"},{"text":" this season!","color":"gray"}]

execute at @s run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1