#import "/global.typ": *

#let ability_data = (
    name: "Glimmering Decree",
    type: ("Ability", "Commander", "Spellblade"),
    blocks: (
      (kind: "passive", effect: [When you use #card_ref("Protective Taunt"), the enemy also takes #times(STR, "d8") radiant damage, ignoring #defense, and moves up to 4 spaces toward you.]),
    ),
)

#let glimmering_decree = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.76 (Arcane Command: an empowered Commander's Order) and the 2026-10-02
changelog (Protective Taunt follows its new trigger; Withering Strike is now Withering Presence on
Commanding Presence).

interpretation: "Pulled toward you" is written like Entice (it moves toward you).
*/
