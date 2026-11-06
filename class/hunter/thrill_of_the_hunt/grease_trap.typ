#import "../../../global.typ": *

#let ability_data = (
    name: "Grease Trap",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1)),
        limitation: per_encounter(1),
        effect: [When a creature moves adjacent to you or to an ally within 6 spaces, it falls #kw_prone, is #kw_vulnerable to the next fire damage it takes, and is treated as if it is #kw_smoldering.],
      ),
    ),
    reminder: (conditions.prone, keywords.vulnerable, conditions.smoldering),
)

#let grease_trap = creat_ability(ability_data)
