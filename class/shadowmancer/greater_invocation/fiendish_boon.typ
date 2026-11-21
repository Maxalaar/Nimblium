#import "../../../global.typ": *

#let ability_data = (
    name: "Fiendish Boon",
    type: ("Ability", "Shadowmancer", "Greater Invocation"),
    blocks: (
      (kind: "passive", effect: [Your #DEX or #INT increases by 1. You have 1 fewer maximum Hit Die.]),
    ),
)

#let fiendish_boon = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
