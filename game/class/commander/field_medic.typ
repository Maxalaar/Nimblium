#import "/global.typ": *

#let ability_data = (
    name: "Field Medic",
    type: ("Ability", "Commander"),
    blocks: (
      (kind: "narrative", effect: [Each #card_ref("Healing Potion") you give heals 1 more Vitality #HP.]),
      (kind: "narrative", effect: [Out of combat, you can heal yourself and your allies from a pool of 10 + #times(2, LVL) #HP. It refills on a #safe_rest.]),
    ),
)

#let field_medic = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Potions heal 1 more Vitality + STR, and a pool of 10 + 2×LVL HP replaces the
Examination bonus on spent Hit Dice; there are no Hit Dice.
*/
