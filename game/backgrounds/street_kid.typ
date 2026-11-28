#import "/global.typ": *

#let ability_data = (
    name: "Street Kid",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You grew up in the gutters of a big city, with no home and no one to look after you. You slept on rooftops, stole your bread and ran faster than the guards. You learned to vanish into a crowd and to read who is a threat. To you, the world gives nothing for free, so you take what you need.]),
      (kind: "active", name: "Vanish", cost: (actions(1),), limitation: per_encounter(1), effect: [#kw_hide from every creature, even those you have no #kw_cover from.]),
    ),
    reminder: (keywords.hide, keywords.cover),
)

#let street_kid = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
