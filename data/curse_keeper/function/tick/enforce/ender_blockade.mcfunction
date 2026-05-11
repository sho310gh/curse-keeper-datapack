# ============================================================
# curse_keeper:tick/enforce/ender_blockade
# Only ejects players who are actually in the End.
# ============================================================

execute as @a[tag=ck.curse_5] if entity @s[nbt={Dimension:"minecraft:the_end"}] at @s run function curse_keeper:tick/enforce/ender_eject

