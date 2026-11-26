#import "/global.typ": *

#let ability_data = (
    name: "Angel-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Medium.]),
      (kind: "narrative", name: "Appearance", effect: [A tall, radiant humanoid with luminous eyes, and sometimes feathered wings or a faint halo.]),
      (kind: "active", cost: (actions(1),), limitation: per_encounter(1), effect: [You or an adjacent creature regains #LVL+#KEY #HP.]),
    ),
)

#let angel_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Celestial). Book: Highborn, your disadvantaged save is neutral instead.

house-rule: There are no saves and no disadvantaged save: Celestials ignore 1 disadvantage on
their checks instead.

house-rule: KEY times per Rest, ignore all disadvantage on a check (first draft: ignore 1
disadvantage on every check, too strong). Then advantage on a check, once per turn (balance pass, user ruling 2026-11-27).

house-rule: Instead of help on checks (Small-folk's and Human-folk's), the angel heals: 1 action, you or an adjacent creature regains LVL+KEY HP (identity pass, user ruling 2026-11-27).

house-rule: Uses: 1/encounter, as in the book, instead of KEY times per Rest and once per turn (user
ruling 2026-11-27). Later notes that say "KEY times per Rest" describe the older version.
*/
