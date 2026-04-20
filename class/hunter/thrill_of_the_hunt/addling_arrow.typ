#import "../../../global.typ": *

#let ability_data = (
    name: "Addling Arrow",
    type: (
        "Ability",
        "Hunter",
        "Thrill of the hunt"
    ),
    cost: (
        "1 Action",
        "1 TotH charge",
    ),
    effect:[
      Attack with a ranged weapon. This attack cannot miss. On its next turn, the target must attack the closest creature to it, chosen at random.
    ],
)

#let addling_arrow = creat_ability(ability_data)