#import "/global.typ": *

#let ability_data = (
    name: "Outlaw",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You grew up on the wrong side of the law, among thieves, smugglers or a gang. You learned to pick locks, keep secrets and never trust a promise. Your crew was your family, and its code was your only law. To you, the law protects the rich, and everyone has a price.]),
      (kind: "active", name: "Getaway", limitation: per_encounter(1), effect: [Move up to your #speed for free.]),
    ),
)

#let outlaw = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).

house-rule: A free move, like Rabbit-folk's Bound: accepted for a background even though the identity pass gives free moves to Rabbit-folk (user ruling 2026-11-28).
*/
