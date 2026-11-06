#import "../../../global.typ": *

#let ability_data = (
    name: "Heavy Shot",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1)),
        effect: [Attack with a ranged weapon at half the weapon's range and push your target by 4 spaces if Small, 2 if Medium, or 1 if Large.],
      ),
    ),
)

#let heavy_shot = creat_ability(ability_data)
