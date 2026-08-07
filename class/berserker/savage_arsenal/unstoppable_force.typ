#import "../../../global.typ": *

#let ability_data = (
    name: "Unstoppable Force",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (kind: "passive", effect: [While #keyword_style[Dying] and #keyword_style[Raging], taking damage causes 1 Wound, and critical hits inflict 2 Wounds.]),
    ),
    reminder: (conditions.dying, berserker_keywords.raging),
)

#let unstoppable_force = creat_ability(ability_data)
