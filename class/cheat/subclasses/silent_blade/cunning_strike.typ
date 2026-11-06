#import "../../../../global.typ": *

#let ability_data = (
    name: "Cunning Strike",
    type: (
        "Ability",
        "Cheat",
        "Silent Blade",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_encounter(2),
        effect: [When you land a Sneak Attack, you may force the target to make a #STR save (#dc(10, stat: INT)). On a failure, instead of rolling your Sneak Attack dice, they deal the maximum amount of damage. If your target saves, regain 1 use.],
      ),
    ),
)

#let cunning_strike = creat_ability(ability_data)
