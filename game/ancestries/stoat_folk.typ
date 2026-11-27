#import "/global.typ": *

#let ability_data = (
    name: "Stoat-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Small.]),
      (kind: "narrative", name: "Appearance", effect: [A small humanoid stoat, long and lean, with sleek fur and sharp teeth.]),
      (kind: "active", name: "Small but Fierce", limitation: per_encounter(2), effect: [When you attack a creature larger than you, the attack deals 1d12 more damage for each size the creature is larger than you.]),
    ),
)

#let stoat_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Stoatling). Book: Small But Ferocious, a single-target attack against a larger creature rolls 1 additional d6 per size category, and they do the same.

house-rule: An active ability, KEY times per Rest, once per turn, and larger creatures don't
get the same bonus against you (user ruling 2026-11-27).

house-rule: Uses: 1/encounter, as in the book, instead of KEY times per Rest and once per turn (user
ruling 2026-11-27). Later notes that say "KEY times per Rest" describe the older version.

house-rule: 1d12 per size instead of 1d6, 2/encounter (user ruling 2026-11-27).
*/
