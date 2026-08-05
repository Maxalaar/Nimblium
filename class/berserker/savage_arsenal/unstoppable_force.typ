#import "../../../global.typ": *

#let ability_data = (
    name: "Unstoppable Force",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (kind: "passive", effect: [While Dying and Raging, taking damage causes 1 Wound (instead of 2), and critical hits inflict 2 Wounds (instead of 3).]),
    ),
    reminder: (conditions.dying, berserker_keywords.raging),
)

#let unstoppable_force = creat_ability(ability_data)
