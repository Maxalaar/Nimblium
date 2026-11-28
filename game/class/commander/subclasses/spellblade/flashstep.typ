#import "/global.typ": *

#let ability_data = (
    name: "Flashstep",
    type: ("Ability", "Commander", "Spellblade"),
    blocks: (
      (kind: "passive", effect: [When you use #card_ref("Reposition"), you may swap places with one of the allies you move.]),
    ),
)

#let flashstep = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.76 (Arcane Command: an empowered Commander's Order) and the 2026-10-02
changelog (Protective Taunt follows its new trigger; Withering Strike is now Withering Presence on
Commanding Presence).
*/
