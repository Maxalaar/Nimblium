#import "/global.typ": *

#let ability_data = (
    name: "Unending Judgment",
    type: ("Ability", "Oathsworn"),
    blocks: (
      (kind: "passive", effect: [While you have no Judgment Dice, your melee attacks deal 5 more damage.]),
    ),
)

#let unending_judgment = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
