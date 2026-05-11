# ☠ Curse Keeper
### A Minecraft Java Datapack — Unique Curse System | v1.0.0

> **Compatible with Minecraft Java 1.21.x** (pack format 88)

---

## What is Curse Keeper?

**Curse Keeper** is a datapack that puts every player under a personal curse from the moment they join the world. Each curse comes with its own unique cleanse tribute — a specific challenge that must be completed to lift it. Once lifted, a cooldown of **6 in-game days** passes before the next tier of curse is assigned. Progress through all three tiers and the player is free of curses forever.

The system is entirely **per-player** — everyone is on their own curse journey, independent of others. Some will push through every tier quickly, others might choose to live with their curse indefinitely. There's no timer forcing your hand.

> ⚠️ This datapack is still in active development. More curses will be added in future updates. Currently **5 curses** are implemented.

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

The tribute varies per curse, so every tier may require a completely different kind of challenge.

### Curse Effects

Curses affect players in different ways depending on which curse they receive. Current effect types include:

- **Reduced max hearts** — permanently removes a set number of hearts while cursed
- **Dimension damage** — the player takes damage when entering or staying in certain dimensions
- **End access blocked** — the player is prevented from entering the End

---

## Commands

### For Players

| Command | Description |
|---|---|
| `/trigger ck.showcurse` | Shows your current active curse and its cleanse tribute. If you are in a cooldown period between tiers, it shows the remaining time until the next curse arrives. |

### For Operators

| Command | Description |
|---|---|
| `/function curse_keeper:admin/reset` | Fully resets the datapack — clears all scoreboards, scheduled functions, and curse data |
| `/function curse_keeper:admin/clear_player` | Clears all curse data for the targeted player |
| `/function curse_keeper:admin/reload` | Re-initializes the datapack without a full world reload |
| `/function curse_keeper:admin/list` | Lists all players currently tracked by the curse system |

---

### Curse List

- **Bloodless** — No natural health regeneration & Hunger
- **Bone Debt** — Reduces max health by 5 hearts
- **Ender Blockade** — Blocked from entering the end
- **Frail Vessel** — Reduces max health by 5 hearts
- **Nether Sickness** — Taking 1 Heart damage every 15 sec in the Nether
- **Sluggish** — Walking Speed reduce by 30%

*More curses and features are planned for future versions.*