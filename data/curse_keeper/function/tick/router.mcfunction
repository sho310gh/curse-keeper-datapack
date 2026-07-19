# ============================================================
# curse_keeper:tick/router
# Only called when system is active (gated in tick/main).
# ============================================================

# --- Re-enable /trigger ck.admin for all players each tick ---
scoreboard players enable @a ck.admin

# --- Listen for /trigger ck.admin ---
# If any player's ck.admin score is >= 1, open the panel for them then reset
execute as @a[scores={ck.admin=1..}] run function curse_keeper:admin/panel
execute as @a[scores={ck.admin=1..}] run scoreboard players set @s ck.admin 0

# --- Global tick values ---
execute store result score #ck ck.day_check run time query day

# --- Enforcement subsystems ---
function curse_keeper:tick/enforce/arachnophobia
function curse_keeper:tick/enforce/bee_marked
function curse_keeper:tick/enforce/bloodless
function curse_keeper:tick/enforce/bone_debt
function curse_keeper:tick/enforce/campfire_cough
function curse_keeper:tick/enforce/echo_marked_death_check
function curse_keeper:tick/enforce/echo_marked
function curse_keeper:tick/enforce/ender_blockade
function curse_keeper:tick/enforce/frail_vessel
function curse_keeper:tick/enforce/grave_pact
function curse_keeper:tick/enforce/landlocked
function curse_keeper:tick/enforce/moonbound
function curse_keeper:tick/enforce/nether_sickness
function curse_keeper:tick/enforce/rootbound
function curse_keeper:tick/enforce/sluggish
function curse_keeper:tick/enforce/soul_debt
function curse_keeper:tick/enforce/soul_drain
function curse_keeper:tick/enforce/vampirism
function curse_keeper:tick/enforce/villagers_bane
function curse_keeper:tick/enforce/picky_eater
function curse_keeper:tick/enforce/heavy_plate

function curse_keeper:tick/cooldown
function curse_keeper:tick/cleanse_check