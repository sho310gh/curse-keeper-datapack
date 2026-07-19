# ============================================================
# Finds the highest solid block at this X/Z position
# and spawns the warden on top of it if unobstructed.
# ============================================================

# Anchor to highest motion blocking block (ground level)
execute positioned over motion_blocking run summon minecraft:warden ~ ~ ~ {Tags:["ck.curse_warden"],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L},"minecraft:is_emerging":{value:{},ttl:85L}}}}