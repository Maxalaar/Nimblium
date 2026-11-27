#import "/global.typ": *

#let ability_data = (
    name: "Rabbit-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Small.]),
      (kind: "narrative", name: "Appearance", effect: [A small humanoid rabbit, with long ears, soft fur and powerful hind legs.]),
      (kind: "active", name: "Bound", limitation: per_encounter(2), effect: [Move up to your #speed for free.]),
    ),
)

#let rabbit_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Bunbun). Book: Bunny Legs, before Interposing or after Defending, hop up to your Speed in any direction for free, 1/encounter.

house-rule: KEY times per Rest, once per turn (book: 1/encounter). No trigger: a free move on
your turn (book: after Defending or before Interposing; user ruling 2026-11-27).

house-rule: Uses: 1/encounter, as in the book, instead of KEY times per Rest and once per turn (user
ruling 2026-11-27). Later notes that say "KEY times per Rest" describe the older version.

house-rule: 2/encounter: a small reactive effect (user ruling 2026-11-27).
*/
