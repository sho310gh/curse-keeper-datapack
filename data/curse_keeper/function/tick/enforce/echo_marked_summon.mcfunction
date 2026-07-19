# ============================================================
# curse_keeper:tick/enforce/echo_marked_summon
# Uses execute store + macro to position the warden randomly.
# ============================================================

# Roll random X and Z offsets
execute store result storage curse_keeper:temp spawn.x int 1 run random value -8..8
execute store result storage curse_keeper:temp spawn.z int 1 run random value -8..8

# Run the macro summon function with those values
function curse_keeper:tick/enforce/echo_marked_summon_macro with storage curse_keeper:temp spawn