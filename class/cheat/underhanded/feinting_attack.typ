// review: style=2026-11-14 changelog=2026-10-02
#import "../../../global.typ": *

#let ability_data = (
    name: "Feinting Attack",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [When you miss for the second time in a round, you may change the #primary_die roll to any result. Changing it to the maximum value counts as a crit.],
      ),
    ),
)

#let feinting_attack = creat_ability(ability_data)
