#import "../../../global.typ": *

#let ability_data = (
    name: "Addling Arrow",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1)),
        effect: [Attack with a ranged weapon. On its next turn, the target must attack the closest creature to it, chosen at random.],
      ),
    ),
)

#let addling_arrow = creat_ability(ability_data)