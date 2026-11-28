#import "/global.typ": *

#let ability_data = (
    name: "Outlander",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You grew up far from cities, in forests, mountains or wastelands, with a tribe or alone. You learned to hunt, to track, to find water and to read the sky. Cities feel loud, crowded and fragile to you. To you, the world is wild and honest, and nature doesn't lie.]),
      (kind: "passive", name: "Wild Paths", effect: [#kw_difficult_terrain doesn't slow you.]),
    ),
    reminder: (keywords.difficult_terrain,),
)

#let outlander = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
