#import "/global.typ": *

#let ability_data = (
    name: "Borne upon the Wind",
    type: ("Ability", "Commander", "Spellblade"),
    blocks: (
      (kind: "passive", effect: [When you use #card_ref("Move it! Move it!"), you and that ally are also #kw_flying for 1 round, and each of you may move up to your #speed for free.]),
    ),
    reminder: (keywords.flying,),
)

#let borne_upon_the_wind = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.76 (Arcane Command: an empowered Commander's Order) and the 2026-10-02
changelog (Face Me! follows its new trigger; Withering Strike is now Withering Presence on
Commanding Presence).
*/
