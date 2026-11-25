#import "/global.typ": *

#let ability_data = (
    name: "Unerring Judgment",
    type: ("Ability", "Oathsworn", "Oath of Vengeance"),
    blocks: (
      (kind: "passive", effect: [While you have Judgment Dice, add 1 to the #primary_die of your melee attacks.]),
    ),
)

#let unerring_judgment = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
