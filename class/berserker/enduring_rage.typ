#import "../../global.typ": *

#let ability_data = (
    name: "Enduring Rage",
    type: (
        "Ability",
        "Berserker",
    ),
    blocks: (
      (kind: "passive", effect: [While #kw_dying, at the beginning of your turn you become #kw_raging.]),
      (kind: "passive", effect: [While #kw_dying, you have a max of 2 actions instead of 1, and ignore the #STR saves to make attacks.]),
    ),
    reminder: (conditions.dying, berserker_keywords.raging),
)

#let enduring_rage = creat_ability(ability_data)
