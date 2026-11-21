#import "../../../../global.typ": *

#let ability_data = (
    name: "Shadowfrost",
    type: ("Ability", "Shadowmancer", "Pact of the Abyssal Depths"),
    blocks: (
      (kind: "passive", effect: [#card_ref("Shadow Blast") also makes its target #kw_slowed.]),
      (kind: "passive", effect: [You may cast #card_ref("Omenrime") or #card_ref("Rimeblades") without #card_ref("Pilfered Power") by spending 10 temp #HP.]),
    ),
    reminder: (conditions.slowed,),
)

#let shadowfrost = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Omenrime replaces Cryosleep in the Ice school (2026-10-02 changelog).

The book also grants 1 Ice Utility Spell: no card for that (workflow.txt).
*/
