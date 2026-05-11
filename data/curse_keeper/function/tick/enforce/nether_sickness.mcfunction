# ============================================================
# curse_keeper:tick/enforce/nether_sickness
# ============================================================

# Increment timer only while physically in the Nether
execute as @a[tag=ck.curse_3] if entity @s[nbt={Dimension:"minecraft:the_nether"}] at @s run scoreboard players add @s ck.nether_timer 1

# Reset timer for players not in the Nether
execute as @a[tag=ck.curse_3] if entity @s[nbt={Dimension:"minecraft:overworld"}] at @s run scoreboard players set @s ck.nether_timer 0
execute as @a[tag=ck.curse_3] if entity @s[nbt={Dimension:"minecraft:the_end"}] at @s run scoreboard players set @s ck.nether_timer 0

# Deal 1 heart damage at 600 ticks and reset
execute as @a[tag=ck.curse_3, scores={ck.nether_timer=300..}] at @s run damage @s 4 minecraft:generic
execute as @a[tag=ck.curse_3, scores={ck.nether_timer=300..}] run scoreboard players set @s ck.nether_timer 0
execute as @a[tag=ck.curse_3, scores={ck.nether_timer=300..}] at @s run title @s actionbar {"text":"✦ Nether Sickness ✦","color":"dark_red","bold":true}