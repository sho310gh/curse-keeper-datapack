# ☠ Curse Keeper
### A Minecraft Java Datapack — Unique Trade System | v1.0.0

> **Compatible with Minecraft Java 1.21.x** (pack format 88)

---

## What is Curse Keeper?

**Curse Keeper** is a datapack that introduces a unique curse-based trade system into your Minecraft world. Instead of simply removing curses the normal way, players can make deals to trade, transfer, or manage curses — turning one of the game's most frustrating mechanics into a dynamic and strategic system.

Whether you're playing survival with friends or running an SMP, Curse Keeper adds a new layer of decision-making around cursed equipment. Do you keep the curse and push through, or find someone willing to take it off your hands?

---

## Features

- **Curse Trading System** — Transfer curses between players or items through a unique in-game trade mechanic
- **Curse Tracking** — The datapack keeps track of active curses across players and items using scoreboards
- **Admin Controls** — Operator commands to manage curses, reset the system, or intervene in specific players' curse states
- **Vanilla-friendly** — No mods required, works fully in vanilla Minecraft Java

---

## Installation

1. Download the datapack as a `.zip` file (or clone this repository)
2. Open Minecraft and navigate to **Singleplayer → Select World → Edit → Open World Folder**
3. Place the datapack folder (or `.zip`) into the `datapacks` folder
4. Start or reload your world
5. Run `/reload` if the world is already loaded
6. You should see a confirmation message in chat that Curse Keeper has been loaded

---

## Commands

All player-facing and operator commands use the `curse_keeper` namespace.

### Player Commands

| Command | Description |
|---|---|
| `/function curse_keeper:trade/offer` | Offer your curse to another nearby player |
| `/function curse_keeper:trade/accept` | Accept an incoming curse trade offer |
| `/function curse_keeper:trade/decline` | Decline an incoming curse trade offer |
| `/function curse_keeper:status` | Check your current curse status |

### Operator Commands

| Command | Description |
|---|---|
| `/function curse_keeper:admin/reset` | Fully reset the datapack — clears all scoreboards, scheduled functions, and curse data |
| `/function curse_keeper:admin/clear_player` | Clear all curse data for the targeted player |
| `/function curse_keeper:admin/reload` | Manually re-initialize the datapack without a full world reload |
| `/function curse_keeper:admin/list` | List all players currently tracked by the curse system |

> **Note:** Operator commands should be run while targeting the relevant player (e.g. using `@p` or a player name selector).

---

## How It Works

The datapack runs on a scoreboard-based tracking system that monitors players and their cursed items. Here's the general flow:

1. A player with a **Curse of Binding** or **Curse of Vanishing** item can initiate a trade
2. The datapack checks nearby players for a valid trade target
3. If the other player **accepts**, the curse data is transferred according to the trade rules
4. The system uses scheduled functions to handle trade timeouts and cleanup

Curses don't just disappear — they have to go *somewhere*. That's the core tension of Curse Keeper.

---

## Credits

Created by **SHO310**

Feel free to use this in your SMP, showcase it on YouTube, or build on top of it — just give credit if you share it publicly.
