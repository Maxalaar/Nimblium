#import "../../global.typ": *

#let ability_data = (
    name: "Elemental Surge",
    type: (
        "Ability",
        "Mage",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [
          When you roll Initiative, regain #WIL mana. This mana is lost at the end of combat if you haven't spent it.

          *Level 10:* You regain #WIL+1d4 mana instead.\
          *Level 17:* You regain #WIL+2d4 mana instead.
        ],
      ),
    ),
)

#let elemental_surge = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
