#import "../../../../global.typ": *

#let ability_data = (
    name: "Low Blow",
    type: (
        "Ability",
        "Cheat",
        "Scoundrel",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [When you Sneak Attack, you may spend 2 extra actions to Taunt your target until you drop to 0 HP. Additionally, the target must succeed on a STR save (DC 10 + INT) or be Incapacitated on their next turn.],
      ),
    ),
    reminder: (conditions.taunted, conditions.incapacitated),
)

#let low_blow = creat_ability(ability_data)