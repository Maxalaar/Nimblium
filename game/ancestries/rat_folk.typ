#import "/global.typ": *

#let ability_data = (
    name: "Rat-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Small.]),
      (kind: "narrative", name: "Appearance", effect: [A small humanoid rat with whiskers, a long bare tail and quick, nimble hands.]),
      (kind: "passive", name: "Scurry", effect: [You can move through the spaces of creatures larger than you.]),
    ),
)

#let rat_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Ratfolk). Book: Scurry, +2 armor if you moved on your last turn; the changelog adds +1 Speed.

house-rule: No +1 speed (balance pass, user ruling 2026-11-27).

house-rule: Instead of Scurry (+2 Defense, Turtle-folk's), the rat slips between legs: move through larger creatures' spaces (identity pass, user ruling 2026-11-27).
*/
