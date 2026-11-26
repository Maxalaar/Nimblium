#import "/global.typ": *

#let ability_data = (
    name: "Mighty Soul",
    type: ("Ability", "Zephyr", "Martial Arts"),
    blocks: (
      (kind: "passive", effect: [#kw_knockback doesn't move you.]),
      (kind: "passive", effect: [When you fail a roll, you may gain 1 Wound to add your #STR to it. You may do so as many times as you like.]),
    ),
    reminder: (keywords.knockback,),
)

#let mighty_soul = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.70 and the 2026-10-02 changelog (the Wound adds STR to any failed roll).

interpretation: "You cannot be moved against your will": Knockback is the only forced
movement.
*/
