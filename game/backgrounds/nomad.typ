#import "/global.typ": *

#let ability_data = (
    name: "Nomad",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You were born on the road, with a caravan, a ship's crew or a wandering people. You never stayed long in one place, and you learned to pack your life in one bag. You know many roads, many customs and many faces. To you, the world is too big to stay still, and home is the people you travel with.]),
      (kind: "passive", name: "Light Traveler", effect: [Your #speed increases by 1.]),
    ),
)

#let nomad = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
