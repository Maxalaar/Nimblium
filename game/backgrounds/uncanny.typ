#import "/global.typ": *

#let ability_data = (
    name: "Uncanny",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [Something about your birth or your childhood was not normal. It might be a prophecy, a strange birthmark, or a childhood among creatures that aren't human. People have always looked at you a little oddly. You see things others don't, and you don't always know why. To you, the world is stranger than it seems, and you are part of its mystery.]),
      (kind: "active", name: "Foresight", limitation: per_encounter(1), effect: [When a creature attacks you, it rerolls its #primary_die.]),
    ),
)

#let uncanny = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
