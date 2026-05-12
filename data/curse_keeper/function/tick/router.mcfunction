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

# --- Enforcement subsystems ---
function curse_keeper:tick/enforce/bone_debt
function curse_keeper:tick/enforce/frail_vessel
function curse_keeper:tick/enforce/nether_sickness
function curse_keeper:tick/enforce/bloodless
function curse_keeper:tick/enforce/ender_blockade
function curse_keeper:tick/enforce/sluggish
function curse_keeper:tick/enforce/soul_drain
function curse_keeper:tick/enforce/villagers_bane
function curse_keeper:tick/enforce/bee_marked
function curse_keeper:tick/enforce/vampirism

function curse_keeper:tick/cooldown
function curse_keeper:tick/cleanse_check