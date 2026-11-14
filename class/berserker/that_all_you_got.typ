// review: style=2026-11-14 changelog=2026-10-02
#import "../../global.typ": *

#let ability_data = (
    name: "That all you got?!",
    type: (
        "Ability",
        "Berserker",
    ),
    blocks: (
      (
        kind: "active",
        cost: (fury_dice_cost("X"),),
        effect: [When you are attacked, reduce the damage you take by #STR+#DEX for each Fury Die spent.],
      ),
    ),
)

#let that_all_you_got = creat_ability(ability_data)
