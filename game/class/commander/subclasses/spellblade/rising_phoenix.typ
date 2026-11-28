#import "/global.typ": *

#let ability_data = (
    name: "Rising Phoenix",
    type: ("Ability", "Commander", "Spellblade"),
    blocks: (
      (kind: "passive", effect: [When you use #card_ref("Second Wind"), each enemy within 2 spaces takes fire damage equal to the total rolled and becomes #kw_smoldering.]),
    ),
    reminder: (conditions.smoldering,),
)

#let rising_phoenix = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.76 (Arcane Command: an empowered Commander's Order) and the 2026-10-02
changelog (Protective Taunt follows its new trigger; Withering Strike is now Withering Presence on
Commanding Presence).
*/
