// review: style=2026-11-14 changelog=2026-10-02
#import "../../../global.typ": *

#let ability_data = (
    name: "Creative Accounting",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (
        kind: "active",
        effect: [Gain up to #INT actions. The next time you would gain actions, you gain that many fewer. You can't use this ability on two turns in a row.],
      ),
    ),
)

#let creative_accounting = creat_ability(ability_data)
