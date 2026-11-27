#import "/global.typ": *

#let ability_data = (
    name: "Small-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Small.]),
      (kind: "narrative", name: "Appearance", effect: [Half the height of a human, with curly hair, a round face and big, hairy bare feet.]),
      (kind: "active", name: "Lucky", limitation: per_encounter(1), effect: [When you fail a check, you succeed instead.]),
    ),
)

#let small_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Halfling). Book: Elusive, +1 Stealth, if you fail a save you can succeed instead, 1/Safe Rest.

house-rule: There are no saves: a failed save becomes a failed check.

house-rule: KEY times per Rest, once per turn. The +1 Stealth is dropped (user ruling 2026-11-27).

house-rule: Uses: 1/encounter instead of the book's 1/Safe Rest (user ruling 2026-11-27).
*/
