# ============================================================
# curse_keeper:tick/enforce/echo_marked_night
# Runs once at nightfall for each Echo Marked player.
# Alternates between spawn and skip nights.
# ============================================================

# Mark as triggered so this doesn't fire again tonight
tag @s add ck.night_triggered

# Flip spawn_night: 0 becomes 1, 1 becomes 0
scoreboard players set #ck_temp ck.spawn_night 1
execute if score @s ck.spawn_night matches 1 run scoreboard players set #ck_temp ck.spawn_night 0
scoreboard players operation @s ck.spawn_night = #ck_temp ck.spawn_night

# If spawn night — summon warden
execute if score @s ck.spawn_night matches 1 run function curse_keeper:tick/enforce/echo_marked_spawn

# If skip night — notify player
execute if score @s ck.spawn_night matches 0 run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"The Echo rests tonight... but it will return.","color":"dark_gray","italic":true}]