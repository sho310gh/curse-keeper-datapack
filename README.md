# ☠ Curse Keeper
### A Minecraft Java Datapack — Unique Curse System | v1.0.0

> **Compatible with Minecraft Java 1.21.x** (pack format 88)

---

## What is Curse Keeper?

**Curse Keeper** is a datapack that puts every player under a personal curse from the moment they join the world. Each curse comes with its own unique cleanse tribute — a specific challenge that must be completed to lift it. Once lifted, a cooldown of **6 in-game days** passes before the next tier of curse is assigned. Progress through all three tiers and the player is free of curses forever.

The system is entirely **per-player** — everyone is on their own curse journey, independent of others. Some will push through every tier quickly, others might choose to live with their curse indefinitely. There's no timer forcing your hand.

> ⚠️ This datapack is still in active development. More curses will be added in future updates. Currently **10 curses** are implemented.

---

## How It Works

### The Three Tiers

Every player progresses through three tiers of curses, in order:

1. **Tier 1** — The player starts cursed. Complete the cleanse tribute to lift it.
2. **Tier 2** — After a cooldown of **6 in-game days**, a new curse is assigned. Complete its cleanse tribute to lift it.
3. **Tier 3** — After another **6-day cooldown**, the final curse is assigned. Lift it and the player is **permanently free** of curses.

The 6-day cooldown only begins *after* the previous curse has been cleansed — there is **no time limit** to complete a cleanse tribute. A player can live with their curse as long as they want, or work towards removing it on their own terms.

### Cleanse Tributes

Each curse has its own unique cleanse tribute — the specific challenge that must be completed to lift it. Examples include:

- Kill a certain number of a specific mob (e.g. kill 150 Skeletons)
- Earn a specific in-game advancement
- Consume a specific item a set number of times

The tribute varies per curse, so every tier may require a completely different kind of challenge.

### Curse Effects

Curses affect players in different ways depending on which curse they receive. Current effect types include:

- **Reduced max hearts** — permanently removes a set number of hearts while cursed
- **Dimension damage** — the player takes damage when entering or staying in certain dimensions
- **End access blocked** — the player is prevented from entering the End
- **Reduced movement speed** — the player moves significantly slower
- **Hunger drain** — saturation is constantly drained and hunger is periodically applied
- **Villager sickness** — proximity to villagers applies Poison and Nausea
- **Bee aggro** — all bees within range aggro onto the player automatically
- **Sunlight burn** — standing exposed under the sun in the Overworld sets the player on fire

---

## Curse List

### Tier 1 — Quirk

| Curse | Effect | Cleanse |
|---|---|---|
| **Bone Debt** | Max health reduced by 5 hearts | Kill 150 Skeletons |
| **Sluggish** | Movement speed reduced by 30% | Walk 50,000 blocks |
| **Villager's Bane** | Poison & Nausea applied within 5 blocks of a villager | Kill 10 Iron Golems |

### Tier 2 — Affliction

| Curse | Effect | Cleanse |
|---|---|---|
| **Famished** | Saturation constantly drained, hunger periodically applied | Consume 5 Enchanted Golden Apples |
| **Frail Vessel** | Max health reduced to 5 hearts | Obtain full Netherite armor (Cover Me in Debris) |
| **Nether Sickness** | 1 heart damage every 15 seconds in the Nether | Enter a Nether Fortress (A Terrible Fortress) |
| **Vampirism** | Exposed to sunlight in the Overworld sets you on fire | Kill 50 Phantoms & consume 20 Milk Buckets |

### Tier 3 — Malediction

| Curse | Effect | Cleanse |
|---|---|---|
| **Bee Marked** | Bees within 16 blocks aggro onto you automatically | Consume 100 Honey Bottles |
| **Bloodless** | No natural health regeneration | Have every effect applied at once (How Did We Get Here?) |
| **Ender Blockade** | Cannot enter the End dimension | Kill 10 Ravagers |

---

## Commands

### For Players

| Command | Description |
|---|---|
| `/trigger ck.showcurse` | Shows your current active curse and its cleanse tribute. If you are in a cooldown period between tiers, it shows the remaining time until the next curse arrives. |

### For Operators

| Command | Description |
|---|---|
| `/function curse_keeper:admin/panel` | Opens the admin panel |
| `/function curse_keeper:admin/reset_all` | Fully resets the datapack — clears all scoreboards, scheduled functions, and curse data |
| `/function curse_keeper:admin/reset_player` | Clears all curse data for the targeted player |
| `/function curse_keeper:admin/list` | Lists all players currently tracked by the curse system |
| `/function curse_keeper:admin/toggle_dev` | Toggles dev mode — shortens cooldown to 2 minutes for testing |
| `/function curse_keeper:admin/toggle_system` | Enables or disables the entire curse system |

---

*More curses and features are planned for future versions.*
*For debugging and testing, see [DEBUG.md](DEBUG.md).*