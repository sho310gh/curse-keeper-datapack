# ============================================================
# curse_keeper:utils/show_cooldown
# Converts @s ck.cooldown (ticks) to HH:MM:SS
# Requires ck.temp scoreboard
# ============================================================

# Ticks → total seconds
scoreboard players operation #total_secs ck.temp = @s ck.cooldown
scoreboard players set #20 ck.temp 20
scoreboard players operation #total_secs ck.temp /= #20 ck.temp

# Hours
scoreboard players operation #hours ck.temp = #total_secs ck.temp
scoreboard players set #3600 ck.temp 3600
scoreboard players operation #hours ck.temp /= #3600 ck.temp

# Remaining seconds after hours
scoreboard players operation #rem ck.temp = #total_secs ck.temp
scoreboard players operation #rem ck.temp %= #3600 ck.temp

# Minutes
scoreboard players operation #minutes ck.temp = #rem ck.temp
scoreboard players set #60 ck.temp 60
scoreboard players operation #minutes ck.temp /= #60 ck.temp

# Seconds
scoreboard players operation #seconds ck.temp = #rem ck.temp
scoreboard players operation #seconds ck.temp %= #60 ck.temp

# Output with leading zeros — 4 cases
execute if score #minutes ck.temp matches ..9 if score #seconds ck.temp matches ..9 run tellraw @s [{"text":"Time remaining: ","color":"gray"},{"score":{"name":"#hours","objective":"ck.temp"}},{"text":":0"},{"score":{"name":"#minutes","objective":"ck.temp"}},{"text":":0"},{"score":{"name":"#seconds","objective":"ck.temp"}},{"text":" (HH:MM:SS)","color":"dark_gray"}]

execute if score #minutes ck.temp matches ..9 if score #seconds ck.temp matches 10.. run tellraw @s [{"text":"Time remaining: ","color":"gray"},{"score":{"name":"#hours","objective":"ck.temp"}},{"text":":0"},{"score":{"name":"#minutes","objective":"ck.temp"}},{"text":":"},{"score":{"name":"#seconds","objective":"ck.temp"}},{"text":" (HH:MM:SS)","color":"dark_gray"}]

execute if score #minutes ck.temp matches 10.. if score #seconds ck.temp matches ..9 run tellraw @s [{"text":"Time remaining: ","color":"gray"},{"score":{"name":"#hours","objective":"ck.temp"}},{"text":":"},{"score":{"name":"#minutes","objective":"ck.temp"}},{"text":":0"},{"score":{"name":"#seconds","objective":"ck.temp"}},{"text":" (HH:MM:SS)","color":"dark_gray"}]

execute if score #minutes ck.temp matches 10.. if score #seconds ck.temp matches 10.. run tellraw @s [{"text":"Time remaining: ","color":"gray"},{"score":{"name":"#hours","objective":"ck.temp"}},{"text":":"},{"score":{"name":"#minutes","objective":"ck.temp"}},{"text":":"},{"score":{"name":"#seconds","objective":"ck.temp"}},{"text":" (HH:MM:SS)","color":"dark_gray"}]