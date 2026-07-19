# Runs as the cursed player who entered the End
# Teleport to overworld spawn
execute in minecraft:overworld run tp @s -45 70 10

# Warn the player
title @s actionbar {"text":"☠ The End is forbidden to you ☠","color":"dark_purple","bold":true}
tellraw @s [{"text":"[Curse Keeper] ","color":"dark_purple"},{"text":"Ender Blockade prevents you from entering the End.","color":"red"}]