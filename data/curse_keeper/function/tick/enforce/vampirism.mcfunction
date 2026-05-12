# Store daytime into global score every tick
execute store result score #ck ck.day_check run time query day

# Increment timer
execute as @a[tag=ck.curse_10] run scoreboard players add @s ck.vamp_timer 1

# Every 40 ticks, attempt to burn — pass to helper which resets timer
execute as @a[tag=ck.curse_10, scores={ck.vamp_timer=40..}] at @s run function curse_keeper:tick/enforce/vampirism_burn

# Initialize timer for any cursed player who doesn't have it set yet
execute as @a[tag=ck.curse_10] unless score @s ck.vamp_timer = @s ck.vamp_timer run scoreboard players set @s ck.vamp_timer 0