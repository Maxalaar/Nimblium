#import "../../../../global.typ": *

#let ability_data = (
    name: "We'll ALL Burn!",
    type: ("Ability", "Shadowmancer", "Pact of the Red Dragon"),
    blocks: (
      (kind: "passive", effect: [You may cast #card_ref("Pyroclasm") without #card_ref("Pilfered Power") if you include yourself in its damage. You have #kw_advantage on its save.]),
    ),
    reminder: (keywords.advantage,),
)

#let well_all_burn = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

The book also grants 1 Fire Utility Spell: no card for that (workflow.txt).
*/
