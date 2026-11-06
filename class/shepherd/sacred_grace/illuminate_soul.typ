#import "../../../global.typ": *

#let ability_data = (
    name: "Illuminate Soul",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        limitation: per_safe_rest(WIL),
        effect: [Target a creature within 6 spaces. For 1 round, attacks against them are made with your choice of advantage or disadvantage.],
      ),
    ),
)

#let illuminate_soul = creat_ability(ability_data)
