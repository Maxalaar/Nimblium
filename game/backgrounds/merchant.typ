#import "/global.typ": *

#let ability_data = (
    name: "Merchant",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You grew up in a family of traders, between markets, caravans and account books. You learned to bargain, to count fast and to spot a bad deal from afar. You have traveled from town to town and know what sells where. To you, everyone wants something, and the trick is knowing what.]),
      (kind: "active", name: "Quick Hands", limitation: per_round(1), effect: [Change what you hold, or give an item to an adjacent ally, for free.]),
    ),
)

#let merchant = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
