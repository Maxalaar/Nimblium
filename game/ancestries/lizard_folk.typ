#import "/global.typ": *

#let ability_data = (
    name: "Lizard-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Small.]),
      (kind: "narrative", name: "Appearance", effect: [A small humanoid lizard with scales, a long snout and a thin tail that grows back when lost.]),
      (kind: "active", limitation: per_encounter(1), effect: [When you regain #HP, you regain #times(2, KEY) more.]),
    ),
)

#let lizard_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Kobold). Book: Wily, force an enemy to reroll a non-critical attack against you, 1/encounter, advantage to influence friendly creatures (changelog) and on checks related to dragons.

house-rule: Lizards regenerate: +2×KEY to a heal they receive, once per turn, KEY times
per Rest, instead of Wily and the advantage on influence and dragon checks (user ruling 2026-11-27).

house-rule: Uses: 1/encounter, as in the book, instead of KEY times per Rest and once per turn (user
ruling 2026-11-27). Later notes that say "KEY times per Rest" describe the older version.
*/
