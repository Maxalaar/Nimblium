# Creature Rules — Nimblium

**House rule.** Nimblium departs from Nimble on how creatures act. In Nimble, a monster does
one thing per turn, and its card links its attacks with "OR" (pick one), "Then" (chain them)
and "(2×)". Nimblium gives creatures **actions**, like heroes, and writes their abilities with
the same blocks and capsules as hero abilities. One card language for the whole game.

Do not "fix" these rules from the Nimble books or changelog.

## 1. Actions

- **Each creature has 1 action per turn.** This is the default value: it is not written on the
  card (like speed 6).
- **Stronger creatures have more actions.** Their number is written as the `ACT` stat at the
  bottom of the card, only when it is more than 1.
- **Moving is free.** A creature moves up to its speed on its turn without spending an action,
  as in Nimble. Only heroes spend actions to move.
- **Each active ability costs actions**, shown on a capsule (`1 Action`). A creature can use
  any active ability it can pay for.
- **Limits prevent abuse.** A creature with 2 actions must not be able to use its strongest
  attack twice: give that ability a `1/turn` limit.
- **Legendary creatures** still take a turn after each hero's turn (Nimble rule). They have
  their `ACT` actions on each of these turns. Limits such as `1/round` keep them in check.
- **Summoned companions** controlled by a hero (Spirit Companion) have no actions of their
  own: a passive block says so, and their controller pays the costs on their capsules.
- **Conditions apply as written.** Dazed takes 1 action away from the creature's next turn:
  a creature with 1 action does nothing that turn except move. Dying limits it to 1 action.

## 2. Blocks

A creature's abilities are a list of blocks, exactly like a hero ability card:

| Field | Meaning |
|---|---|
| `name` | the ability's name, shown in bold above the capsules |
| `kind` | `"passive"` (always on or triggered) or `"active"` (costs actions) |
| `cost` | `(actions(1),)`: every active block has a cost, even when it is 1 action |
| `limitation` | `per_turn(1)`, `per_round(1)`, `per_encounter(1)`... |
| `effect` | the text |

Passive blocks come first, then active blocks, in the order the GM would read them.

## 3. Text

- **Every block has a name**, in its `name` field: it is shown in bold above the capsules and
  lets the GM and the players refer to the ability. Hero ability blocks have no name; the
  field is the same, it is just left out.
- **Attack effect.** Always in this order:
  `[2 attacks.] [Range X,] XdY+Z damage. [On damage / On crit: effect.]`
  - `2 attacks.` replaces Nimble's "(2×)".
  - `Range X,` only for ranged attacks; melee attacks have no range.
  - Damage always ends with the word "damage".
- **Subject.** A creature is "this creature", then "it / its". Never "you": "you" is the player
  who owns the card (writing_rules.md §2).
- **No "or", no "then".** Two attacks the creature chooses between are two blocks. Two effects
  it chains are two blocks, each with a `1/turn` limit, on a creature with enough actions.
- **No costs or limits in the text.** They go on capsules (writing_rules.md §4).
- **Default values are not written**: speed 6, 1 action, can take damage, disappears at 0 HP.

## 4. Stats

The stat row at the bottom of the card shows, in this order and only when present:

`ACT` (when more than 1) · `HP` · `ARM` (M or H) · `SPD` (when not 6) · `LVL`

## 5. Converting a Nimble stat block

| Nimble | Nimblium |
|---|---|
| `Stab. 1d6. OR: Shoot. (Range 8) 1d6.` | two active blocks, `1 Action` each |
| `Swarm. ... Then: Slam (2×). 1d4+20.` | `ACT 2`, two active blocks, `1 Action` and `1/turn` each |
| `Slam (2×). 1d4+8.` | one block named Slam: `2 attacks. 1d4+8 damage.` |
| "The first time this dies, ..." | passive block with a `1/encounter` limit (Undying is shared: `passive_abilities.undying` in `creatures/passive_abilities.typ`) |
| Bloodied / Last Stand abilities | passive blocks whose text starts with "While Bloodied, ..." / "When this creature drops to 0 HP, ..." |

## 6. Examples

**Goblin** — 1 action (not written): it stabs or shoots.

```typst
blocks: (
  (kind: "active", cost: (actions(1),), name: "Stab", effect: [1d6 damage.]),
  (kind: "active", cost: (actions(1),), name: "Shoot", effect: [Range 8, 1d6 damage.]),
),
hit_points: 15,
level: "1/3",
```

**Goblin Ratrider** — a passive and one attack.

```typst
blocks: (
  (kind: "passive", name: "Charge", effect: [If this creature moves at least 4 spaces in a straight line, its next attack this turn has advantage.]),
  (kind: "active", cost: (actions(1),), name: "Bite & Stab", effect: [2 attacks. 1d6+2 damage. On crit: #kw_prone.]),
),
reminder: (conditions.prone,),
hit_points: 30,
speed: 10,
level: "2",
```

**Mummy Lord** — 2 actions: it summons and slams each turn, but never slams twice.

```typst
blocks: (
  (kind: "passive", limitation: per_encounter(1), name: "Undying", effect: [When this creature would die, it resets to 1 #HP instead.]),
  (kind: "passive", name: "Cursed Gaze", effect: [On crit: #dc(20) #INT save, or suffer 1 Wound.]),
  (kind: "active", cost: (actions(1),), limitation: per_turn(1), name: "Scarab Swarm", effect: [Summon 10 scarab minions (d6) within 6 spaces.]),
  (kind: "active", cost: (actions(1),), limitation: per_turn(1), name: "Slam", effect: [2 attacks. 1d4+20 damage. On damage: #kw_dazed.]),
),
reminder: (conditions.dazed,),
hit_points: 280,
actions: 2,
level: "21",
```
