#import "/global.typ": *

#let ability_data = (
    name: "Rat-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Small.]),
      (kind: "narrative", name: "Appearance", effect: [A small humanoid rat with whiskers, a long bare tail and quick, nimble hands.]),
      (kind: "passive", effect: [If you moved on your last turn, your #defense increases by 2.]),
    ),
)

#let rat_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Ratfolk). Book: Scurry, +2 armor if you moved on your last turn; the changelog adds +1 Speed.

house-rule: No +1 speed (balance pass, user ruling 2026-11-27).
*/
