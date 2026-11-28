#import "/global.typ": *

#let ability_data = (
    name: "Spellforge",
    type: ("Ability", "Commander", "Spellblade"),
    blocks: (
      (kind: "passive", effect: [When combat starts, you may cast #card_ref("Enchant Weapon") for free. You may still spend mana to upcast it.]),
    ),
)

#let spellforge = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.76 (Firebrand, level 3) and the 2026-10-02 changelog (renamed Spellforge).

interpretation: Deep Knowledge (a spell of tier 1, 2, 3 or 4 or lower and a Utility Spell at
levels 3, 7, 11 and 15) only gives spells: no card, the class sheet says what to take.
*/
