# ============================================================
# curse_keeper:tick/enforce/grave_pact_death
# Fires when the player dies — resets max hearts to full.
# ============================================================

scoreboard players set @s ck.death_processed 1
attribute @s minecraft:max_health base set 20
scoreboard players set @s ck.grave_hearts 20
scoreboard players set @s ck.kill_wither 0
tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Death has reset your hearts. The Grave Pact hungers again.","color":"dark_red"}]