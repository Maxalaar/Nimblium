#import "/global.typ": *

#let ability_data = (
    name: "Elemental Surge",
    type: (
        "Ability",
        "Mage",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [When you roll Initiative, regain #WIL mana. This mana is lost at the end of combat if you haven't spent it.],
      ),
    ),
    high_Levels: [
      *Level 10:* Regain #WIL+1d4 mana.\
      *Level 17:* Regain #WIL+2d4 mana.
    ],
)

#let elemental_surge = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
