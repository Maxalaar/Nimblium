#import "/global.typ": *

#let ability_data = (
    name: "Orc-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Medium.]),
      (kind: "narrative", name: "Appearance", effect: [A big, muscular humanoid with gray or green skin, tusks and a heavy jaw.]),
      (kind: "active", name: "Relentless", limitation: per_safe_rest(1), effect: [When you would drop to 0 #HP, you drop to #times(3, KEY) #HP instead.]),
    ),
)

#let orc_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Orc). Book: Relentless, when you would drop to 0 HP you may set your HP to LVL instead, 1/Safe Rest, +1 Might.

house-rule: Relentless drops you to 3×KEY HP instead of LVL, 1/encounter instead of 1/Safe
Rest (user ruling 2026-11-27); the +1 Might is dropped
(user ruling 2026-11-27).
house-rule: Relentless is 1/Rest, as in the book, instead of 1/encounter; it still drops you to 3×KEY HP (user ruling 2026-11-27: a per-encounter heal can be abused with many short fights).
*/
