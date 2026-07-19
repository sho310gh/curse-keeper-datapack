# ============================================================
# curse_keeper:tick/enforce/echo_marked_spawn
# Spawns a warden near the player using random value
# to pick from preset offset positions.
# ============================================================

# Warn the player
title @s title {"text":"☠ IT COMES ☠","color":"dark_purple","bold":true}
title @s subtitle {"text":"The Echo stirs nearby...","color":"gray","italic":true}
playsound minecraft:block.sculk_sensor.clicking_stop master @s ~ ~ ~ 2 1

# Spawn warden at random position
function curse_keeper:tick/enforce/echo_marked_summon

# Schedule anger 3 seconds after spawn
schedule function curse_keeper:curse/echo_marked_anger 60t