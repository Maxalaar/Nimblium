#import "/global.typ": *

#let ability_data = (
    name: "Human-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Medium.]),
      (kind: "narrative", name: "Appearance", effect: [An ordinary human, of any height, build or skin color.]),
      (kind: "passive", name: "Versatile", effect: [You have +1 to all your skills.]),
    ),
)

#let human_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Human). Book: Tenacious, +1 to all skills and Initiative.

house-rule: No +1 to Initiative (no Initiative, user ruling 2026-11-28).
*/
