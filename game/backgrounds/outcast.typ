#import "/global.typ": *

#let ability_data = (
    name: "Outcast",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You were rejected by your people because of a curse, a crime, a mark or simply who you are. You grew up on the margins, avoided, alone or with other outcasts. You learned to live without anyone's help and to bear people's stares. To you, the world is unfair, and those who reject others are often the real monsters.]),
      (kind: "passive", name: "Lone Wolf", effect: [While no ally is within 6 spaces of you, your attacks deal #KEY more damage.]),
    ),
)

#let outcast = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
