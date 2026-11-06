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
        effect: [When you Sneak Attack, you may spend 2 extra actions to #kw_taunt your target until you drop to 0 #HP. Additionally, the target must succeed on a #STR save (#dc(10, stat: INT)) or be #kw_incapacitated on their next turn.],
      ),
    ),
    reminder: (conditions.taunted, conditions.incapacitated),
)

#let low_blow = creat_ability(ability_data)