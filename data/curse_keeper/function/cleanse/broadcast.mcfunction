# ============================================================
# curse_keeper:cleanse/broadcast
# Announces the cleanse to the whole server.
# Runs as the cleansed player so @s = that player.
# ============================================================

# Personal message
tellraw @s [{"text":"\n☀ ","color":"yellow"},{"text":"Your curse has been lifted!","color":"green","bold":true},{"text":" ☀\n","color":"yellow"}]

# Server-wide announcement
tellraw @a [{"text":"[Curse Keeper] ","color":"dark_purple","bold":true},{"selector":"@s","color":"white"},{"text":" has lifted their ","color":"gray"},{"text":"Tier ","color":"yellow"},{"score":{"name":"@s","objective":"ck.tier"},"color":"yellow"},{"text":" curse!","color":"gray"}]

# Play a sound for all players
execute at @s run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1