#import "../../../global.typ": *

#let ability_data = (
    name: "Grease Trap",
    type: (
        "Ability",
        "Hunter",
        "Thrill of the hunt"
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action", "1 TotH charge"),
        limitation: "1/encounter",
        effect: [When a creature moves adjacent to you or to an ally within 6 spaces, it falls #keyword_style[Prone], is #keyword_style[Vulnerable] to the next fire damage it takes, and is treated as if it is #keyword_style[Smoldering].],
      ),
    ),
    reminder: (conditions.prone, keywords.vulnerable, conditions.smoldering),
)

#let grease_trap = creat_ability(ability_data)
