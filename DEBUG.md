# ☠ Curse Keeper — Debug Guide

This document explains the debug functions available for testing curses during development. All debug functions require operator permissions.

---

## Dev Mode

Before testing, enable dev mode to shorten the cooldown between tiers from 6 in-game days to 2 minutes:

```
/function curse_keeper:admin/toggle_dev
```

Run it again to disable dev mode when done.

---

## Debug Functions

### Assign a specific curse

Manually assigns any curse by ID to a player, bypassing the random roll. Clears any existing curse on the player first, including restoring max health and clearing effects.

```
/function curse_keeper:admin/debug/assign_curse {player:"NAME", curse_id:6}
```

### Instantly cleanse the current curse

Triggers the cleanse for whatever curse the player currently has, bypassing kill counts and item consumption requirements. The normal cooldown still starts afterward.

```
/function curse_keeper:admin/debug/cleanse_curse {player:"NAME"}
```

### Check all scores and tags

Shows all active Curse Keeper scores, tags and global state for the calling player.

```
/function curse_keeper:admin/debug/status
```

---

## Curse ID Reference

| ID | Curse | Tier |
|---|---|---|
| 1 | Bone Debt | 1 |
| 2 | Frail Vessel | 2 |
| 3 | Nether Sickness | 2 |
| 4 | Bloodless | 3 |
| 5 | Ender Blockade | 3 |
| 6 | Sluggish | 1 |
| 7 | Soul Drain | 2 |
| 8 | Villager's Bane | 1 |
| 9 | Bee Marked | 3 |
| 10 | Vampirism | 2 |
| 11 | Arachnophobia | 1 |
| 12 | Rootbound | 1 |
| 13 | Grave Pact | 2 |
| 14 | Landlocked | 2 |
| 15 | Moonbound | 3 |
| 16 | Soul Debt | 3 |

---

## Testing a Curse End-to-End

The recommended flow for testing a single curse from assignment to cleanse:

**1. Enable dev mode**
```
/function curse_keeper:admin/toggle_dev
```

**2. Reset the player to a clean state**
```
/function curse_keeper:admin/reset_player {player:"NAME"}
```

**3. Assign the curse you want to test**
```
/function curse_keeper:admin/debug/assign_curse {player:"NAME", curse_id:6}
```

**4. Verify the curse is active**
```
/trigger ck.showcurse
```

**5. Check scores and tags**
```
/function curse_keeper:admin/debug/status
```

**6. Test the enforcement** — confirm the curse effect is actively applying (reduced speed, fire, poison near villagers, etc.)

**7. Trigger the cleanse**
```
/function curse_keeper:admin/debug/cleanse_curse {player:"NAME"}
```

**8. Verify the cleanse message appeared and effects were removed**

**9. Wait for the dev mode cooldown (2 minutes) and confirm the next tier curse is assigned automatically**

**10. Repeat for the next curse**

---

## Notes

- `assign_curse` can be run on yourself or any online player by name
- `cleanse_curse` bypasses all kill and consumption counters — it calls the cleanse function directly
- Advancement-based cleanses (Frail Vessel, Nether Sickness, Bloodless) are also bypassed by `cleanse_curse`
- Landlocked cleanse (Conduit Power effect) cannot be bypassed by `cleanse_curse` — you need to actually obtain the effect in-game, or manually run the cleanse function directly
- After a full season cleanse (Tier 3 lifted), the player receives the `ck.season_free` tag and will no longer be assigned curses — use `reset_player` to start a fresh test cycle