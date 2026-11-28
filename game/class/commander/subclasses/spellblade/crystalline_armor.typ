#import "/global.typ": *

#let ability_data = (
    name: "Crystalline Armor",
    type: ("Ability", "Commander", "Spellblade"),
    blocks: (
      (kind: "passive", effect: [When you use #card_ref("Rally the Fallen"), the ally also gains as many temp #HP. An enemy that removes some of them with a melee attack becomes #kw_slowed.]),
    ),
    reminder: (conditions.slowed,),
)

#let crystalline_armor = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.76 (Arcane Command: an empowered Commander's Order) and the 2026-10-02
changelog (Protective Taunt follows its new trigger; Withering Strike is now Withering Presence on
Commanding Presence).

interpretation: Speed "halved until the end of their next turn" is the Slowed condition.
*/
