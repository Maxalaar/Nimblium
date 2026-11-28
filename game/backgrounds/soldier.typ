#import "/global.typ": *

#let ability_data = (
    name: "Soldier",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You grew up in barracks and camps, to the sound of drums and drill sergeants. You learned to march, to hold the line and to follow orders without a word. You have seen battles, and friends who never came home. To you, the world holds those you protect, those you fight, and the comrade at your side.]),
      (kind: "passive", name: "Formation", effect: [While an ally is adjacent to you, your attacks deal #KEY more damage.]),
    ),
)

#let soldier = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
