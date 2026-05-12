# ============================================================
# curse_keeper:tick/cooldown
# ============================================================

# Decrement cooldown
scoreboard players remove @a[tag=ck.on_cooldown] ck.cooldown 1

# 1 minute warning (exactly 1200 ticks remaining)
execute as @a[tag=ck.on_cooldown, scores={ck.cooldown=1200}] run tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple","bold":true},{"text":"Your next curse draws near — 1 minute remaining...","color":"yellow"}]

# Cooldown over — remove cooldown tag, add ready tag
execute as @a[tag=ck.on_cooldown, scores={ck.cooldown=..0}] run tag @s add ck.curse_ready
execute as @a[tag=ck.on_cooldown, scores={ck.cooldown=..0}] run scoreboard players set @s ck.cooldown 0
execute as @a[tag=ck.on_cooldown, scores={ck.cooldown=..0}] run tag @s remove ck.on_cooldown

# Auto assign for players with ck.curse_ready tag
execute as @a[tag=ck.curse_ready, tag=!ck.cursed, tag=!ck.season_free] run function curse_keeper:curse/auto_assign